<?php
  require_once('conn.php');
  $result = $conn->query('select now() as n;');
  if (!$result) {
    die($conn->error);
  }

  $row = $result->fetch_assoc();
  print_r($row);
  echo '<br> now: ' . $row['n'];
?>