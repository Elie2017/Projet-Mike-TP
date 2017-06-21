<?php

	// Création d'une nouvelle instance PDO
    try{
        $pdo = new PDO('mysql:host=localhost;dbname=mikemonroi','root','', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
      
    }


    catch(PDOException $e){
        echo 'Connexion impossible. Message error:'.$e;
    }


    // Transmission des données via la méthode POST
    if($_SERVER['REQUEST_METHOD'] == 'POST') {
		if(!empty($_POST)){
			$result = $pdo->prepare("INSERT INTO modeleDeVoiture(marque, modele, annee, couleur, image) 
									VALUES (:marque, :modele, :annee, :couleur, :image)");


			$result->bindParam(':marque', $_POST["marque"]);
			$result->bindParam(':modele', $_POST["modele"]);
			$result->bindParam(':annee', $_POST["annee"]);
			$result->bindParam(':couleur', $_POST["couleur"]);
			$result->bindParam(':image', $_POST["image"]);

			$result->execute();
			
		}
		// Echange des données via l'URL
    }elseif($_SERVER['REQUEST_METHOD'] == 'GET') {
		if(empty($_GET))
			$result = $pdo->prepare("SELECT * FROM modeleDeVoiture");
		else
			$result = $pdo->prepare("SELECT * FROM modeleDeVoiture WHERE id = ".$_GET['id']);
		
		$result->execute();
		// var_dump($stmt->fetchAll());
		echo json_encode($result->fetchAll());
	}


	?>
	
	