<?php

//curl --request POST \
//--url 'http://localhost:8006/additem.php?first_name=Ivan&last_name=Ivanov&home_phone=88005553535&faculty_id=200&group_id=200'

declare(strict_types=1);
ini_set('error_log', __DIR__ . '/error.log');

function create_connection($hostname, $username, $password, $dbname): PDO
{
    try {
        $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $dbh;
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage();
        $dbh = null;
        die();
    }
}

try {
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $dbh = create_connection('localhost', 'user', 'pass', 'library');

        $sql = <<<QUERY
                  INSERT INTO students (first_name, last_name, home_phone, faculty_id, group_id)
                  VALUES (:first_name, :last_name, :home_phone, :faculty_id, :group_id)
        QUERY;

        $result = $dbh->prepare($sql);

        $result->execute(array(
            ':first_name' => $_GET["first_name"],
            ':last_name' => $_GET["last_name"],
            ':home_phone' => $_GET["home_phone"],
            ':faculty_id' => $_GET["faculty_id"],
            ':group_id' => $_GET["group_id"]
        ));

        $arr["status"] = "success";
        $arr["id"] = $dbh->lastInsertId();;
        echo json_encode($arr);

        $dbh = null;
        $result = null;
    }
}
catch (PDOException $exception) {
    $arr["status"] = "error";
    $arr["message"] = "Failed to add record";
    echo json_encode($arr);
    error_log('additem:'.$exception->getMessage());
    die();
}
?>

