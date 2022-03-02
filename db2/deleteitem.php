<?php

//curl --request DELETE \
//--url 'http://localhost:8006/deleteitem.php?ID=201'

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
    if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {

        $dbh = create_connection('localhost', 'user', 'pass', 'library');

        $sql = <<<QUERY
                  DELETE FROM students
                  WHERE id = :id 
        QUERY;

        $result = $dbh->prepare($sql);

        $result->execute(array(
            ':id' => $_GET["ID"],
        ));

        $arr["status"] = "success";
        echo json_encode($arr);

        $dbh = null;
        $result = null;
    }
}
catch (PDOException $exception) {
    $arr["status"] = "error";
    $arr["message"] = "Failed to delete record";
    echo json_encode($arr);
    error_log('deleteitem:'.$exception->getMessage());
    die();
}
?>

