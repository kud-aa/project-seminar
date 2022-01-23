<?php

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

$dbh = create_connection('localhost', 'user', 'pass', 'library');

$sql = <<<QUERY
    SELECT 
    *
    FROM students
    INNER JOIN faculty ON students.faculty_id = faculty.id;
    INNER JOIN groups ON students.group_id = groups.id;
QUERY;

//students_owe_books.id, students.first_name, students.last_name, books.title

//$statement = $dbh->query($query);
//$rows = $statement->fetch(PDO::FETCH_ASSOC);
//print_r($rows);

//$sql = "SELECT * FROM students_owe_books";
$result = $dbh->query($sql)->fetchAll();
print_r($result);
//foreach ($result as $row) {
//    echo $row['id']."\n";
//}

//foreach ($result as $row) {
//    echo $row['id']." ".$row['first_name']." ".$row['last_name']." ".$row['home_phone']." ".$row['faculty_id']." ".$row['group_id']."\n";
//
//}
//
//foreach ($result as $row) {
//    echo $row['id']." ".$row['student_id']." ".$row['book_id']."\n";
//
//}
//$query = $db->prepare('show tables');
//$query->execute();
//
//while($rows = $query->fetch(PDO::FETCH_ASSOC)){
//     var_dump($rows);
//}

?>

