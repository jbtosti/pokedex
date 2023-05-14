<!DOCTYPE html>
<html>
<head>
    <title>Test Pokémon</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="style_detail.css"/>
</head>
<body>

    <div> 
        <h1 class="menu-title">Pokedex</h1>
    </div>

    <nav class="menu-bar">
        <a href="type.php">Type</a>
        
    </nav>

    <?php
    
    $id = $_GET['id'];

    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "test";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Vérifier si ok
    if (!$conn) {
        die("Connexion échouée : " . mysqli_connect_error());
    }

    // Requête SQL pour récup les info du pokemon
    $sql = "SELECT pokemon.nom, pokemon.numero, pokemon.pv, pokemon.attaque, pokemon.defense, pokemon.attaque_spe, pokemon.defense_spe, pokemon.vitesse, type.name
        FROM pokemon
        JOIN pokemon_type ON pokemon.numero = pokemon_type.pokemon_numero
        JOIN type ON pokemon_type.type_id = type.id
        WHERE pokemon.numero = $id";

    $resultat = mysqli_query($conn, $sql);

    
    if (mysqli_num_rows($resultat) > 0) {

        
        $row = mysqli_fetch_assoc($resultat);

        // produits en croix demandé pour les states 
        $pv_ratio = $row['pv'] / 255;
        $attaque_ratio = $row['attaque'] / 255;
        $defense_ratio = $row['defense'] / 255;
        $attaque_spe_ratio = $row['attaque_spe'] / 255;
        $defense_spe_ratio = $row['defense_spe'] / 255;
        $vitesse_ratio = $row['vitesse'] / 255;

        $pv_value = round($pv_ratio * 100);
        $attaque_value = round($attaque_ratio * 100);
        $defense_value = round($defense_ratio * 100);
        $attaque_spe_value = round($attaque_spe_ratio * 100);
        $defense_spe_value = round($defense_spe_ratio * 100);
        $vitesse_value = round($vitesse_ratio * 100);

        echo '<div class="pokemon-card">';
        echo '<h1 class="pokemon-name">' . $row['nom'] . '</h1>';

        echo '<div class="pokemon-info">';
        echo '<div class="pokemon-image-left">';
        echo '<img src="images/' . $row['numero'] . '.png" alt="' . $row['nom'] . '">';
        echo '</div>';

        echo '<div class="pokemon-details">';
        echo '<h2>Type</h2>';
        echo '<div class="pokemon-type">' . $row['name'] . '</div>';

        echo '<div class="stat-label">Attaque</div>';
        echo '<div class="stat-bar">';
        echo '<div class="stat-value">' . $attaque_value . '</div>';
        echo '<div class="stat-bar-inner">';
        echo '<div class="stat-bar-fill" style="width: ' . $attaque_value . '%;"></div>';
        echo '</div>';
        echo '</div>';

        echo '<div class="stat-label">Défense</div>';
        echo '<div class="stat-bar">';
        echo '<div class="stat-value">' . $defense_value . '</div>';
        echo '<div class="stat-bar-inner">';
        echo '<div class="stat-bar-fill" style="width: ' . $defense_value . '%;"></div>';
        echo '</div>';
        echo '</div>';

        echo '<div class="stat-label">Attaque spéciale</div>';
        echo '<div class="stat-bar">';
        echo '<div class="stat-value">' . $attaque_spe_value . '</div>';
        echo '<div class="stat-bar-inner">';
        echo '<div class="stat-bar-fill" style="width: ' . $attaque_spe_value . '%;"></div>';
        echo '</div>';
        echo '</div>';

        echo '<div class="stat-label">Défense spéciale</div>';
        echo '<div class="stat-bar">';
        echo '<div class="stat-value">' . $defense_spe_value . '</div>';
        echo '<div class="stat-bar-inner">';
        echo '<div class="stat-bar-fill" style="width: ' . $defense_spe_value . '%;"></div>';
        echo '</div>';
        echo '</div>';

        echo '<div class="stat-label">Vitesse</div>';
        echo '<div class="stat-bar">';
        echo '<div class="stat-value">' . $vitesse_value . '</div>';
        echo '<div class="stat-bar-inner">';
        echo '<div class="stat-bar-fill" style="width: ' . $vitesse_value . '%;"></div>';
        echo '</div>';
        echo '</div>';
        echo '</div>';

        echo '<div class="stat-label">States</div>';
        echo '<div class="stat-bar">';
        echo '<div class="stat-value">0</div>';
        echo '<div class="stat-bar-inner">';
        echo '<div class="stat-bar-fill"></div>';
        echo '</div>';
        echo '</div>';
        echo '</div>';
        
        
    } else {
        echo "Pokémon non trouvé.";
    }



    
    mysqli_close($conn);
    ?>

    <script>
        function showPokemonDetails(id) {
            var detailsElement = document.getElementById("pokemon-details");
            detailsElement.style.display = "block";
        }
    </script>

    <a href="php_test.php" class="return-link">Retour à la page d'accueil</a>

</body>
</html>