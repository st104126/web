<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "webphaseiiteam_20";

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch(PDOException $e) {
        echo $sql . "<br>" . $e->getMessage();
    }
    $data = $conn->query("SELECT * FROM webphaseiiteam_20.blog");
    $para_data = $data->fetchAll();

?>