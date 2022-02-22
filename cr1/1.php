<?php

//curl --request GET \
//--url 'http://localhost:8008/1.php?speciality_name=%D0%98%D0%91'
// ИБ = %D0%98%D0%91 encoded from utf-8

$hostname = 'localhost';
$username = 'user';
$password = 'pass';
$dbname = 'prof203';

$db = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

if($_SERVER['REQUEST_METHOD'] !== 'GET')
    die("ERROR: Incorrect method should be GET");

if(!array_key_exists('speciality_name', $_GET))
    die("ERROR: Required arguments missing");

try{
    $speciality_name = $_GET['speciality_name'];

    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

    if (!array_key_exists( 'year_start', $_GET)) {
        $query = $db->prepare(<<<EOD
            SELECT students.lastname, students.firstname, groups.grnum, specialities.speciality_name, groups.year_start
            FROM students
                LEFT JOIN groups ON groups.grid = students.grid
                LEFT JOIN specialities ON specialities.speciality_id = groups.speciality_id
            WHERE specialities.speciality_name LIKE :speciality_name
            ORDER BY students.lastname
EOD
        );
        $query->bindValue(':speciality_name', $speciality_name, PDO::PARAM_STR);
        $query->execute();
        $res = $query->fetchAll();
        echo json_encode($res, JSON_UNESCAPED_UNICODE);
    }
}catch (PDOException $e){
        die('db error');
}
?>



