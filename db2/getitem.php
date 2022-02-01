<?php

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
    if ($_SERVER['REQUEST_METHOD'] == 'GET') {

        $dbh = create_connection('localhost', 'user', 'pass', 'library');

        $student_id = $_GET["student_id"];

        $sql = <<<QUERY
                  SELECT 
                        students.first_name,
                        students.last_name,
                        students.home_phone,
                        groups.group_name,
                        faculty.faculty_name
                  FROM students
                  INNER JOIN groups ON students.group_id = groups.id
                  INNER JOIN faculty ON groups.faculty_id = faculty.id
        QUERY;

        $result = $dbh->query($sql);
        $result->execute();
        echo json_encode($result->fetchAll(PDO::FETCH_ASSOC));
    }

    else{
        error_log("listitems: wrong request method");
        die(http_response_code(400));
    }
    $dbh = null;
    $result = null;
}
catch (PDOException $exception) {
    $dbh = null;
    error_log('listitems:'.$exception->getMessage());
    die(json_encode([]));
}
?>

