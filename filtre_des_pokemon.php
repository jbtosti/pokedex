<!DOCTYPE html>
<html>
<head>
    <title>Liste des Pokémon</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="filtre_des_pokemon.css"/>
</head>
<body>
<div> 
    <h1 class="menu-title">Pokedex</h1>
</div>

<nav class="menu-bar">
    <a href="type.php">Type</a>
    
</nav>

<?php
    // pour recupere les pokemon
    if (isset($_GET['type'])) {
    $type = $_GET['type'];
    
    // Connexion à la base de données
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "test";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Vérifier la connexion est ok
    if (!$conn) {
        die("Connexion échouée : " . mysqli_connect_error());
    }

    
    $type = $_GET['type'];

    
    $sql = "SELECT p.* FROM pokemon p
            JOIN pokemon_type pt ON p.numero = pt.pokemon_numero
            JOIN type t ON pt.type_id = t.id
            WHERE t.name = '$type'";
    $resultat = mysqli_query($conn, $sql);
    
    
    if (mysqli_num_rows($resultat) > 0) {
        echo "<h1>Liste des Pokémon de type $type</h1>";
        echo '<div class="pokemon-cards">';
        
        
        while ($row = mysqli_fetch_assoc($resultat)) {
            
            echo '<div class="pokemon-card">';
            echo "<p>Numéro : " . $row['numero'] . "</p>";
            echo "<p>Nom : " . $row['nom'] . "</p>";
            $imageURL = "images/" . $row['numero'] . ".png";

            if (file_exists($imageURL)) {
                echo "<a href='detail.php?numero=" . $row['numero'] . "'>";
                echo "<img src='$imageURL' alt='" . $row['nom'] . "' />";
                echo "</a>";
            } else {
                echo "Image non disponible";
            }
            echo '</div>';
            
            
        }
        
        echo '</div>'; 
    } else {
        echo "Aucun Pokémon de type $type trouvé.";
    }

    
    mysqli_close($conn);
} else {
    echo "Type de Pokémon non spécifié.";
}
?>

<a href="php_test.php" class="return-link">Retour à la page d'accueil</a>
</body>
</html>