<?php
$host = "database-project.c9wwskkooi6s.us-east-1.rds.amazonaws.com";
$username = "admin";
$password = "Anis13121998";
$database = "project";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
