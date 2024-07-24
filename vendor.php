<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FuckedOut - Vendor Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f2e9;
            color: #333;
            text-align: center;
        }
        h1 {
            color: #2e8b57;
        }
        .menu {
            background-color: #ffffff;
            border: 1px solid #2e8b57;
            margin: 20px;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            width: 300px;
        }
        .menu img {
            max-width: 100px;
            border-radius: 5px;
        }
        .menu-title {
            color: #2e8b57;
        }
        .container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
        }
    </style>
</head>
<body>
    <h1>FuckedOut - Vendor Menu</h1>
    <?php
    $dsn = 'mysql:host=localhost;dbname=sellers_db;charset=utf8';
    $username = 'root';
    $password = '';

    try {
        $pdo = new PDO($dsn, $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        if (isset($_GET['id'])) {
            $vendor_id = intval($_GET['id']);
            $stmt = $pdo->prepare('SELECT * FROM sellers WHERE id = ?');
            $stmt->execute([$vendor_id]);
            $vendor = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($vendor) {
                echo "<h2>" . htmlspecialchars($vendor['name']) . " - Menus</h2>";
                echo "<p>" . htmlspecialchars($vendor['location']) . "</p>";

                $stmt = $pdo->prepare('SELECT * FROM menus WHERE vendor_id = ?');
                $stmt->execute([$vendor_id]);
                $menus = $stmt->fetchAll(PDO::FETCH_ASSOC);

                echo "<div class='container'>";
                foreach ($menus as $menu) {
                    echo "<div class='menu'>";
                    echo "<h3 class='menu-title'>" . htmlspecialchars($menu['title']) . "</h3>";
                    echo "<p>Price: $" . htmlspecialchars($menu['price']) . "</p>";
                    if ($menu['image'] != 'No image') {
                        echo "<img style='width:100%;height:150px;object-fit:cover;' src='" . htmlspecialchars($menu['image']) . "' alt='" . htmlspecialchars($menu['title']) . "'>";
                    }
                    echo "<p><a href='" . htmlspecialchars($menu['link']) . "' target='_blank'>View Details</a></p>";
                    echo "</div>";
                }
                echo "</div>";
            } else {
                echo "<p>Vendor not found.</p>";
            }
        } else {
            echo "<p>No vendor selected.</p>";
        }
    } catch (PDOException $e) {
        echo "Veritabanı bağlantısı başarısız: " . $e->getMessage();
    }
    ?>
</body>
</html>
