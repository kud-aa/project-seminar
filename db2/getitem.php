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
        
        $id = $_GET["ID"];
        $sql = <<<QUERY
                  SELECT 
                        students.first_name,
                        students.last_name,
                        students.home_phone,
                        groups.group_name,
                        faculty.faculty_name,
                        books.title,
                        books.author,
                        shelves.shelve
                  FROM students_owe_books
                  LEFT JOIN students ON students_owe_books.student_id = students.id
                  LEFT JOIN books ON students_owe_books.book_id = books.id
                  LEFT JOIN groups ON students.group_id = groups.id
                  LEFT JOIN faculty ON groups.faculty_id = faculty.id
                  LEFT JOIN shelves ON books.shelve_id = shelves.id
                  WHERE students_owe_books.id = $id
        QUERY;

        $result = $dbh->query($sql);
        $result->execute();
        echo json_encode($result->fetchAll(PDO::FETCH_ASSOC));
    }

    else{
        error_log("getitem: wrong request method");
        die(http_response_code(400));
    }
    $dbh = null;
    $result = null;
}
catch (PDOException $exception) {
    $dbh = null;
    error_log('getitem:'.$exception->getMessage());
    die(json_encode([]));
}
?>

