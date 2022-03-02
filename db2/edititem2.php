<?php

//curl --request POST \
//--url 'http://localhost:8006/edititem2.php?title=PEPSI&author=OPENSTACK&release_date=2022&shelve_id=200&ID=203'

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
                  UPDATE books SET
                  title=:title,
                  author=:author, 
                  release_date=:release_date,
                  shelve_id=:shelve_id
                  WHERE id=:id
        QUERY;

        $result = $dbh->prepare($sql);

        $result->execute(array(
            ':title' => $_GET["title"],
            ':author' => $_GET["author"],
            ':release_date' => $_GET["release_date"],
            ':shelve_id' => $_GET["shelve_id"],
            ':id' => $_GET["ID"]
        ));

        $arr["status"] = "success";
        echo json_encode($arr);

        $dbh = null;
        $result = null;
    }
}
catch (PDOException $exception) {
    $arr["status"] = "error";
    $arr["message"] = "Failed to add record";
    echo json_encode($arr);
    error_log('edititem2:'.$exception->getMessage());
    die();
}
?>

