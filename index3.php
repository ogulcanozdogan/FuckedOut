<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FuckedOut - Vendors</title>
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
        .container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin: 20px;
        }
        .vendor {
            background-color: #ffffff;
            border: 1px solid #2e8b57;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .vendor img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }
        .vendor a {
            text-decoration: none;
            color: #2e8b57;
        }
        .vendor a:hover {
            text-decoration: underline;
        }
        .logo {
            width: 100px;
            margin: 20px auto;
        }
    </style>
</head>
<body>
    <h1>FuckedOut - Vendors</h1>
    <img src="https://png.pngtree.com/png-vector/20230531/ourmid/pngtree-coloring-page-of-marijuana-leaf-on-white-background-vector-png-image_6771142.png" alt="Logo" class="logo">
    <div class="container">
        <?php
        $dsn = 'mysql:host=localhost;dbname=sellers_db;charset=utf8';
        $username = 'root';
        $password = '';

        try {
            $pdo = new PDO($dsn, $username, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $stmt = $pdo->query('SELECT * FROM sellers');
            $vendors = $stmt->fetchAll(PDO::FETCH_ASSOC);

            foreach ($vendors as $vendor) {
                echo "<div class='vendor'>";
                echo "<a href='vendor.php?id=" . $vendor['id'] . "'>";
                echo "<img style='width:100%;height:300px;object-fit:cover;' src='" . htmlspecialchars($vendor['photo']) . "' alt='" . htmlspecialchars($vendor['name']) . "'>";
                echo "<h2>" . htmlspecialchars($vendor['name']) . "</h2>";
                echo "<p>" . htmlspecialchars($vendor['location']) . "</p>";
                echo "</a>";
                echo "</div>";
            }
        } catch (PDOException $e) {
            echo "Veritabanı bağlantısı başarısız: " . $e->getMessage();
        }
        ?>
    </div>
</body>
</html>
