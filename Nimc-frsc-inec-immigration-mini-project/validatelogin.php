<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "semesterproject";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $Email_address = $_POST['Email_address'];
    $password = $_POST['password'];
    $radio_buttons = $_POST['radio_button'];

    if ($radio_buttons == "") {
        echo "Login failed";
    } else {
        $tables = array("signup", "nimc", "frsc", "inec", "immigration");
        $found = false;

        foreach ($tables as $table) {
            $sql = "SELECT Email_address FROM $table WHERE Email_address = '$Email_address' AND radio_button = '$radio_buttons'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                $found = true;
                break;
            }
        }

        if ($found) {
            if ($radio_buttons == "NIMC") {
                header("Location: ./nimcpage.html");
                die;
            } elseif ($radio_buttons == "FRSC") {
                header("Location: ./frscmainpage.html");
                die;
            } elseif ($radio_buttons == "INEC") {
                header("Location: ./inecmain.html");
                die;
            } elseif ($radio_buttons == "IMMIGRATION") {
                header("Location: ./immigrationpage.html");
                die;
            } elseif ($radio_buttons == "STAFF") {
                header("Location: ./staff.php");
                die;
            } else {
                echo "Invalid radio button value";
            }
        } else {
            echo "Invalid login credentials";
        }
    }
}

$conn->close();
?>
