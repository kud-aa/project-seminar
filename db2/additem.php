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

//try {
//    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $dbh = create_connection('localhost', 'user', 'pass', 'library');

//$faculty_name = $_POST['faculty_name'];
//$sqlf = "SELECT * FROM faculty WHERE faculty_name = :faculty_name";
//$stmntf = $pdo->prepare($sqlf);
//$stmntf->execute(array(':faculty_name'=>$faculty_name));
//$dataf = $stmntf->fetch(PDO::FETCH_ASSOC);
//$faculty_id = $dataf['id'];
//$_SESSION['current_faculty_id'] = $faculty_id;
//
//$group_name = $_POST['group_name'];
//$sqlg = "SELECT * FROM groups WHERE group_name = :group_name";
//$stmntg = $pdo->prepare($sqlg);
//$stmntg->execute(array(':group_name'=>$group_name));
//$datag = $stmntg->fetch(PDO::FETCH_ASSOC);
//$group_id = $datag['id'];
//$_SESSION['current_group_id'] = $group_id;

        $sql = <<<QUERY
                  INSERT INTO students (first_name, last_name, home_phone, faculty_id, group_id)
                  VALUES (:first_name, :last_name, :home_phone, :group_id, :faculty_id)
        QUERY;

        $result = $dbh->prepare($sql);

       $sql->bindParam(':first_name', $first_name);
       $sql->bindParam(':last_name', $last_name);
       $sql->bindParam(':home_phone',$home_phone);
       $sql->bindParam(':group_id', $group_id);
       $sql->bindParam(':faculty_id', $faculty_id);


        $student_id = $_POST['id'];
        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];
        $home_phone = $_POST['home_phone'];
        $faculty_id = $_POST['faculty_id'];
        $group_id = $_POST['group_id'];
        $student = [$first_name, $last_name, $home_phone, $faculty_id, $group_id];

        $result->execute($student);
        $arr["status"] = "success";
        $arr["id"] = $student_id;
        echo json_encode($arr);
        //echo json_encode($result->fetchAll(PDO::FETCH_ASSOC));
        //}

        // else{
        //     error_log("listitems: wrong request method");
        //     die(http_response_code(400));
        // }
        $dbh = null;
        //$result = null;
        //}
        //catch (PDOException $exception) {
        //    $dbh = null;
        //    error_log('listitems:'.$exception->getMessage());
        //    die(json_encode([]));
        //}
?>

