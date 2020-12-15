<?php
require '../db/connect.php';
// On compte le nombre d'argonautes actuellement présents dans la base
  $sql = "SELECT COUNT(*) FROM argonautes LIMIT 50";
  $stmt= $pdo->prepare($sql);
  $stmt->execute();
  $count = $stmt->fetchColumn();
  $stmt = null;
// Si il y a 49 argonautes ou moins, on permet d'insérer un argonaute (pour ne pas dépasser les 50)
  if ($count <= 49) {
    if(isset($_POST['nom'])){
      $nom = $_POST['nom'];
      $sql = "INSERT INTO argonautes (nom) VALUES (?)";
      $stmt= $pdo->prepare($sql);
      $stmt->execute([$nom]);
      $stmt = null;
    }
}  
// Si il y a 50 argonautes ou moins, on passe une div par nom dans la réponse de la requête AJAX qui affiche le contenu de la base, sinon on renvoie une erreur.
  if ($count <= 50) {
    $query = $pdo->prepare("SELECT nom FROM argonautes LIMIT 50");
    $query->execute();
    $results = $query->fetchAll(\PDO::FETCH_ASSOC);
    foreach($results as $result) {
      echo '<div class="member-item">'.$result['nom'].'</div>';
    }
    $query = null;
} else {
    echo 'Il ne peut pas y avoir plus de 50 membres à bord !';
    exit;
}
?>