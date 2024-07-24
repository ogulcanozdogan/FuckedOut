<?php
require 'vendor/autoload.php';

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$dsn = 'mysql:host=localhost;dbname=sellers_db;charset=utf8';
$username = 'root';
$password = '';

try {
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Veritabanına başarıyla bağlanıldı.<br>";
} catch (PDOException $e) {
    die("Veritabanı bağlantısı başarısız: " . $e->getMessage());
}

// Node.js betiğini çalıştır
shell_exec('node leafedout-scraper/scrape.js');

// 1'den 50'ye kadar olan JSON dosyalarını oku ve veritabanına yaz
for ($i = 1; $i <= 50; $i++) {
    $fileName = "leafedout-scraper/sellers$i.json";
    if (file_exists($fileName)) {
        $jsonData = file_get_contents($fileName);
        $sellers = json_decode($jsonData, true);

        if ($sellers) {
            foreach ($sellers as $seller) {
                $name = $seller['name'] ?? 'Unknown';
                $location = $seller['location'] ?? 'Unknown';
                $link = $seller['link'] ?? '#';
                $photo = $seller['photo'] ?? 'No photo';
                $lastSeen = $seller['lastSeen'] ?? 'Unknown';

                // Hata ayıklama bilgisi
                echo "Veri: $name, $location, $link, $photo, $lastSeen<br>";

                // Aynı isimdeki kaydın olup olmadığını kontrol et
                $stmt = $pdo->prepare("SELECT COUNT(*) FROM sellers WHERE name = ?");
                $stmt->execute([$name]);
                $count = $stmt->fetchColumn();

                if ($count == 0) {
                    // Satıcıyı veritabanına kaydet
                    try {
                        $stmt = $pdo->prepare("INSERT INTO sellers (name, location, link, photo, last_seen) VALUES (?, ?, ?, ?, ?)");
                        $stmt->execute([$name, $location, $link, $photo, $lastSeen]);
                        echo "Satıcı eklendi: $name, $location, $link, $photo, $lastSeen<br>";
                    } catch (PDOException $e) {
                        echo "Veritabanına ekleme hatası: " . $e->getMessage() . "<br>";
                    }
                } else {
                    echo "Satıcı zaten mevcut: $name<br>";
                }
            }
        } else {
            echo "$fileName dosyasından satıcı verileri alınamadı.<br>";
        }
    } else {
        echo "$fileName dosyası bulunamadı.<br>";
    }
}

$pdo = null;
?>
