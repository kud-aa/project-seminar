<?php

//curl --request POST \
//--url 'http://localhost:8008/4.php?lastname=Ivan&firstname=DragoJr&grid=100&age=19'

$hostname = 'localhost';
$username = 'user';
$password = 'pass';
$dbname = 'prof203';

$db = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

try{
    if($_SERVER['REQUEST_METHOD'] !== 'POST')
        die("ERROR: Incorrect method should be POST");
    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

    $sql = <<<QUERY
                  INSERT INTO students (lastname, firstname, grid, age)
                  VALUES (:lastname, :firstname, :grid, :age)
QUERY;

    $result = $dbh->prepare($sql);

    $result->execute(array(
        ':lastname' => $_GET["lastname"],
        ':firstname' => $_GET["firstname"],
        ':grid' => $_GET["grid"],
        ':age' => $_GET["age"],
    ));

    $arr["status"] = "success";
    echo json_encode($arr);

    $dbh = null;
    $result = null;
} catch (PDOException $exception) {
    $arr["status"] = "error";
    echo json_encode($arr);
    die();
}

?>



