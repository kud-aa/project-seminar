<?php

//curl --request POST \
//--url 'http://localhost:8006/addlink.php?ID1=199,ID2=199'

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
                  INSERT INTO students_owe_books (student_id, book_id)
                  VALUES (:student_id, :book_id)
        QUERY;

        $result = $dbh->prepare($sql);

        $result->execute(array(
            ':student_id' => $_GET["ID1"],
            ':book_id' => $_GET["ID2"],
        ));

        $arr["status"] = "success";
        echo json_encode($arr);

        $dbh = null;
        $result = null;
    }
}
catch (PDOException $exception) {
    $arr["status"] = "error";
    $arr["message"] = "Failed to add link";
    echo json_encode($arr);
    error_log('addlink:'.$exception->getMessage());
    die();
}
?>

