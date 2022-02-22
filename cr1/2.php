<?php

//curl --request GET \
//--url 'http://localhost:8008/2.php?year_start=2019'

$hostname = 'localhost';
$username = 'user';
$password = 'pass';
$dbname = 'prof203';

$db = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

if($_SERVER['REQUEST_METHOD'] !== 'GET')
    die("ERROR: Incorrect method should be GET");

if(!array_key_exists('year_start', $_GET))
    die("ERROR: Required arguments missing");

try{
    $year_start = $_GET['year_start'];

    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

    $query = $db->prepare(
         <<<EOD
            SELECT students.lastname, students.firstname, groups.grnum, specialities.speciality_name, groups.year_start
            FROM students
                LEFT JOIN groups ON groups.grid = students.grid
                LEFT JOIN specialities ON specialities.speciality_id = groups.speciality_id
            WHERE groups.year_start LIKE :year_start
            ORDER BY students.lastname
EOD
    );
    $query->bindValue(':year_start', $year_start, PDO::PARAM_STR);
    $query->execute();
    $res = $query->fetchAll();
    echo json_encode($res, JSON_UNESCAPED_UNICODE);
}catch (PDOException $e){
    die('db error');
}
?>



