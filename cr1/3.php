<?php

$hostname = 'localhost';
$username = 'user';
$password = 'pass';
$dbname = 'prof203';

$db = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

if($_SERVER['REQUEST_METHOD'] !== 'GET')
    die("ERROR: Incorrect method should be GET");

if(!array_key_exists('pagenum', $_GET))
    die("ERROR: Required arguments missing");

try{
    $pagenum = $_GET['pagenum'];
    $limit = 50;

    $limit_start = $limit * ($pagenum - 1);

    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

        $query = $db->prepare(<<<EOD
            SELECT students.lastname, students.firstname, groups.grnum, specialities.speciality_name, groups.year_start
            FROM students
                LEFT JOIN groups ON groups.grid = students.grid
                LEFT JOIN specialities ON specialities.speciality_id = groups.speciality_id
            ORDER BY students.lastname LIMIT :limit_start, :limit
EOD
        );
        $query->bindValue(':limit_start', $limit_start, PDO::PARAM_INT);
        $query->bindValue(':limit', $limit, PDO::PARAM_INT);
        $query->execute();
        $res = $query->fetchAll();
        echo json_encode($res, JSON_UNESCAPED_UNICODE);
}catch (PDOException $e){
        die('db error');
}
?>
