<!DOCTYPE html>
<html>
<head>
    <title>Liste des Types de Pokémon</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="style_type.css"/>
    <style>
        <?php include 'styles_type.php'; ?>
    </style>
</head>
<body>
    <h1 class="menu-title">Pokedex</h1>
    <h4>Cliquez sur un type pour voir tous les Pokémon de ce type</h4>

    <ul>
        <?php
        
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "test";

        $conn = mysqli_connect($servername, $username, $password, $dbname);

        
        if (!$conn) {
            die("Connexion échouée : " . mysqli_connect_error());
        }

        // sql
        $sql = "SELECT DISTINCT name, color FROM type";
        $resultat = mysqli_query($conn, $sql);
        
        if (mysqli_num_rows($resultat) > 0) {
            while ($row = mysqli_fetch_assoc($resultat)) {
                echo "<li><a href='filtre_des_pokemon.php?type=" . $row['name'] . "' class='type-link' style='background-color: " . $row['color'] . ";'>" . $row['name'] . "</a></li>";
            }
        }
        else {
            echo "Aucun type de Pokémon trouvé.";
        }

        
        mysqli_close($conn);
        ?>
    </ul>

    <a href="php_test.php" class="return-link">Retour à la page d'accueil</a>

</body>
</html>