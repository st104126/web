<?php
    $conn = new PDO('mysql:host=localhost;dbname=webphaseiiteam_20','root','');
    if(!$conn){
        die("Error: Failed to connect to database!");
    }
    $data = $conn->query("SELECT * FROM blog");
    $blog_data = $data->fetchAll();
?>