<?php
$dsn = "mysql:host=localhost;dbname=wcs-tech-challenge;charset=utf8mb4";
$options = [
  PDO::ATTR_EMULATE_PREPARES   => false,
  PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
];
$user = "root";
$pass = "password";
try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (Exception $e) {
  error_log($e->getMessage());
  echo 'Une erreur est survenue empêchant la connexion à la base de données.';
  exit;
}
?>