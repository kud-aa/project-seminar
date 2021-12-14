<?php

$hostname = 'localhost';
$username = 'user';
$password = 'pass';
$dbname = 'prof203';

$db = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

if($_SERVER['REQUEST_METHOD'] !== 'GET')
    die("ERROR: Incorrect method should be GET");

if(!array_key_exists('specialty_name', $_GET))
    die("ERROR: Required arguments missing");

try{
    $specialty_name = $_GET['specialty_name'];
    $num = 1;
    if(array_key_exists('specialty_name', $_GET))
        $num = $_GET[$num];

    $offset = ($num - 1) * 50;

    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);


    if (!array_key_exists( 'year_start', $_GET)) {
        $query = $dbh->prepare(<<<EOD
SELECT s.lastname, s.firstname, g.grnum, s.speciality_name, g.year_start
FROM students s
    LEFT JOIN `groups` g ON g.grid = s.grid
    LEFT JOIN specialities s ON s.speciality_id = g.speciality_id
WHERE s.speciality_name LIKE :sn
ORDER BY s.lastname LIMIT 50 OFFSET $offset;
EOD
        );
        $query->bindValue(':sn', $speciality_name, PDO::PARAM_STR);
        $query->execute();
        $res = $query->fetchAll();
        echo json_encode($res, JSON_UNESCAPED_UNICODE);
    }
}
?>

