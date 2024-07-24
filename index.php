<?php

require 'vendor/autoload.php';

use Goutte\Client;
use Symfony\Component\DomCrawler\Crawler;

set_time_limit(0);

$dsn = 'mysql:host=localhost;dbname=p;charset=utf8mb4';
$username = 'root';
$password = '';
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
];

try {
    $pdo = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
    die('Connection failed: ' . $e->getMessage());
}

$client = new Client();

$sitemapUrl = 'https://leafedout.com/sitemap.xml';
$sitemapContent = file_get_contents($sitemapUrl);
$crawler = new Crawler($sitemapContent);

$sitemapLinks = $crawler->filter('sitemap > loc')->each(function (Crawler $node) {
    return $node->text();
});

$startFrom = 4179;
$currentCount = 0;

foreach ($sitemapLinks as $link) {
    if (strpos($link, '/sitemaps/vendors-') !== false) {
        processVendorSitemap($client, $link, $pdo, $startFrom, $currentCount);
    }
}

function processVendorSitemap(Client $client, $sitemapUrl, PDO $pdo, $startFrom, &$currentCount) {
    $sitemapContent = file_get_contents($sitemapUrl);
    $crawler = new Crawler($sitemapContent);
    $vendorLinks = $crawler->filter('url > loc')->each(function (Crawler $node) {
        return $node->text();
    });

    foreach ($vendorLinks as $vendorLink) {
        $currentCount++;
        if ($currentCount > $startFrom) {
            processVendor($client, $vendorLink, $pdo);
        }
    }
}

function processVendor(Client $client, $vendorUrl, PDO $pdo) {
    $crawler = $client->request('GET', $vendorUrl);
    
    // Vendor adını kontrol et ve al
    if ($crawler->filter('h1')->count() > 0) {
        $vendorName = $crawler->filter('h1')->text();
    } else {
        echo "Vendor name not found for URL: $vendorUrl\n";
        return;
    }

    // Vendor'un veritabanında var olup olmadığını kontrol edin
    $stmt = $pdo->prepare('SELECT COUNT(*) FROM vendors WHERE name COLLATE utf8mb4_general_ci = ? OR url COLLATE utf8mb4_general_ci = ?');
    $stmt->execute([$vendorName, $vendorUrl]);
    $exists = $stmt->fetchColumn();

    if ($exists) {
        echo "Vendor already exists: $vendorName\n";
        return;
    }
    
    // Vendor bilgilerini veritabanına kaydet
    $stmt = $pdo->prepare('INSERT INTO vendors (name, url) VALUES (?, ?)');
    $stmt->execute([$vendorName, $vendorUrl]);
    echo "Vendor saved: $vendorName\n";
}

?>
