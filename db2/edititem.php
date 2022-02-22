<?php

//curl --request POST \
//--url 'http://localhost:8006/edititem.php?first_name=MEKS&last_name=MESKTACK&home_phone=88005553535&faculty_id=200&group_id=200&ID=204'

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
                  UPDATE students SET
                  first_name=:first_name,
                  last_name=:last_name, home_phone=:home_phone,
                  faculty_id=:faculty_id,
                  group_id=:group_id
                  WHERE id=:id
        QUERY;

        $result = $dbh->prepare($sql);

        $result->execute(array(
            ':first_name' => $_GET["first_name"],
            ':last_name' => $_GET["last_name"],
            ':home_phone' => $_GET["home_phone"],
            ':faculty_id' => $_GET["faculty_id"],
            ':group_id' => $_GET["group_id"],
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
    die();
}
?>

