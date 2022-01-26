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

        $sql = <<<QUERY
                  SELECT 
                  books.id, books.title, books.author, shelves.shelve
                  FROM books
                  INNER JOIN shelves ON books.shelve_id = shelves.id;
              QUERY;

        $result = $dbh->query($sql);
        $result->execute();
        echo json_encode($result->fetchAll(PDO::FETCH_ASSOC));
    }
    else{
        error_log("listitems2: wrong request method");
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
