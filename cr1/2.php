<?php

$hostname = "localhost";
$username = "user";
$password = "pass";
$dbname = "prof203";

//$dbh = new PDO("mysql:host=localhost;dbname=prof203", "user", "pass");

if($_SERVER['REQUEST_METHOD'] !== 'GET')
    die("incorrect method");

if(!array_key_exists('specialty_name', $_GET))
    die("required arguments missing");

try{
    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_SILENT);
    $dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    
    $query = "SELECT `lastname`, `firstname`, `grnum`, `speciality_name`, `year_start` FROM `students` LEFT JOIN `groups` ON groups.grid=students.grid LEFT JOIN `specialities` ON specialities.speciality_id=groups.speciality_id WHERE specialities.speciality_name=? ORDER BY students.lastname ASC;";
    $q = $dbh->prepare($query);
    if(!$q->execute([$_GET['speciality_name']]))
        die("db error");
    echo json_encode($q->fetchAll(), JSON_UNESCAPED_UNICODE);

    $dbh = null;
} catch (PDOException $e) {
    die('db error');
}
//$result = mysql_query('SELECT g.`grnum`, s.`lastname`, s.`firstname` FROM `groups` g, `students` s WHERE s.`grid`=s.`grid`');
//SELECT g.`grnum`, s.`lastname`, s.`firstname`
//FROM `groups` g, `students` s 
//WHERE s.`grid`=s.`grid`

//$query = <<<QUERY
//    SELECT `grnum`
//    FROM `groups`
//    INNER JOIN `students` ON  = `students`.`grid`;
//QUERY;
//
//$statement = $db->query($query);
//$rows = $statement->fetch(PDO::FETCH_ASSOC);
//print_r($rows);
//
//$db = null;
?>

