<?php

//curl --request POST \
//--url 'http://localhost:8006/additem2.php?title="testdn"&author="testdn"&shelve_id=200'

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
                  INSERT INTO books (title, author, shelve_id)
                  VALUES (:title, :author, :shelve_id)
        QUERY;

        $result = $dbh->prepare($sql);

        $result->execute(array(
            ':title' => $_GET["title"],
            ':author' => $_GET["author"],
            ':shelve_id' => $_GET["shelve_id"]
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
    die();
}
?>

