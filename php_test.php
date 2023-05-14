<!DOCTYPE html>
<html>
<head>
    <title>Pokedex</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="style.css">
</head>
<body>
    
    <div> 
        <h1 class=" menu-title " > Pokedex </h1>
    </div>

<nav class="menu-bar">
    <a href="type.php"> Type </a>


</nav>

    <div class="container">


        <?php    
        // Connexion à la base de données
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "test";
         
        $conn = mysqli_connect($servername, $username, $password, $dbname);

        // Vérifier la connexion est ok 
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }

        // Requête SQL 
        $sql = "SELECT p.nom, p.numero, t.name AS type FROM pokemon AS p JOIN pokemon_type AS pt ON p.numero = pt.pokemon_numero JOIN type AS t ON t.id = pt.type_id";
        $resultat = mysqli_query($conn, $sql);

        
        if (mysqli_num_rows($resultat) > 0) {

            
            while ($row = mysqli_fetch_assoc($resultat)) {
                $id = $row['numero'];
                $nom = $row['nom'];
                $type = $row['type'];
                $image_path = "images/" . $id . ".png";
                ?>
              <a href="detail.php?id=<?php echo $id; ?>" class="card">
                 <img class="card-img-top" src="<?php echo $image_path; ?>" alt="<?php echo $nom; ?>">
                 <div class="card-body">
                    <h2 class="card-title"><?php echo $nom; ?></h2>
                   <p class="card-text">Type : <?php echo $type; ?></p>
                 </div>
                </a>
                <?php
            }
        } else {
            echo "Aucun Pokémon trouvé.";
        }

        
        mysqli_close($conn);
        ?>
    </div>
</body>
</html>