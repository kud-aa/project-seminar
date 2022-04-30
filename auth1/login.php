<?php

ini_set('error_log', __DIR__ . '/error.log');

function my_log(string $error)
{
    error_log($error.$exception->getMessage());
}

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


function login($dbh)
{

    #if ($_SERVER['REQUEST_METHOD'] != 'POST') {
    #    security_log("Error: expected POST");
    #    return http_response_code(405);
    #}

    #if (!(array_key_exists('username', $_POST) and is_string($_POST['username']) and
    #    array_key_exists('password', $_POST) and is_string($_POST['password'])
    #)) {
    #    print_r(json_encode(["status" => "error", "message" => "Failed to login: malformed request"]));
    #    security_log("Login error: malformed request");
    #    return http_response_code(400);
    #}

    $dbh = create_connection('localhost', 'user', 'pass', 'auth1');
    $sql = "SELECT hashsaltpass FROM users WHERE username = :username;";
    $sth = $dbh->prepare($sql);
    $sth->execute(array(
        ':username' => $_POST['username']
    ));
    #$sth->bindParam(':username', $_POST['username']);
    #$sth->execute();
    $res = $sth->fetchAll(PDO::FETCH_ASSOC);

    echo $res;

    echo "\r\n";
    if (count($res) != 1) {
        print_r(json_encode(["status" => "error", "message" => "Failed to login: no such user"]));
        my_log("Login error: no such user");
        return http_response_code(400);
    }

    $hash = $res[0]['hashsaltpass'];

    if (!password_verify($_POST['password'], $hash)) {
        print_r(json_encode(["status" => "error", "message" => "Invalid credentials"]));
        my_log("Login error: wrong password");
        return http_response_code(200);
    }

    session_start([
        'use_strict_mode' => true,
        'cookie_httponly' => true,
        'cookie_samesite' => 'Strict',
        'name' => 'securecookie'
    ]);

    my_log("login: session started = " . session_id() . PHP_EOL);
    session_regenerate_id($delete_old_session = true);
    my_log("login: session regenerated = " . session_id() . PHP_EOL);

    $_SESSION['is_auth'] = true;

    echo "<h1>OK</h1>";
    my_log("Login: successful");
    return http_response_code(200);
}

login($dbh);
$dbh = null;
