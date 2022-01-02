<?php
    include("connect.php");
?>

<?php
$i = 0;

move_uploaded_file(
    $_FILES["titleimg"]["tmp_name"],
    'img/' . $_FILES["titleimg"]["name"]
);

move_uploaded_file(
    $_FILES["new_subimg"]["tmp_name"],
    'img/' . $_FILES["new_subimg"]["name"]
);

move_uploaded_file(
    $_FILES["imgsq1"]["tmp_name"],
    'img/' . $_FILES["imgsq1"]["name"]
);

move_uploaded_file(
    $_FILES["imgsq2"]["tmp_name"],
    'img/' . $_FILES["imgsq2"]["name"]
);

move_uploaded_file(
    $_FILES["imgsq3"]["tmp_name"],
    'img/' . $_FILES["imgsq3"]["name"]
);

$title = $_POST['new_title'];
$slogan = $_POST['new_slogan'];
$date = $_POST['trip_date'];
$subtitle = $_POST['new_subtitle'];
$content = $_POST['new_content'];
$time = $_POST['new_time'];
$title_img = 'img/' . $_FILES["titleimg"]["name"];
$subtitle_img = 'img/' . $_FILES["new_subimg"]["name"];
$imgsq_1 = 'img/' . $_FILES["imgsq1"]["name"];
$imgsq_2 = 'img/' . $_FILES["imgsq2"]["name"];
$imgsq_3 = 'img/' . $_FILES["imgsq3"]["name"];

$sql = "INSERT INTO blog (id,  title, titleimg, slogan, creation_date, subtitle, subitle_img, content, opening_time, subimg1, subimg2, subimg3)
VALUES ('$i'+1, '$title','$slogan', '$date', '$subtitle','$content','$time','$title_img','$subtitle_img','$imgsq_1','$imgsq_2','$imgsq_3')";
// use exec() because no results are returned
$conn->exec($sql);




?>