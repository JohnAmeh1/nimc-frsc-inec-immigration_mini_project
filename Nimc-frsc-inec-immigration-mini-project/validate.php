<?php
 function validateEmail($Email_address) {
        return filter_var($Email_address, FILTER_VALIDATE_EMAIL);
    }
    
    function sanitizeInput($data) {
        return htmlspecialchars(trim($data));
    }
    
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $First_name = sanitizeInput($_POST['First_name']);
        $Last_name = sanitizeInput($_POST['Last_name']);
        $Age = sanitizeInput($_POST['Age']);
        $Email_address = sanitizeInput($_POST['Email_address']);
        $password = $_POST['password'];
        $radio_buttons = isset($_POST['radio_button']) ? $_POST['radio_button'] : '';
        
        if (empty($First_name)) {
            header("Location: signup.html?error=First Name is required");
            exit;
        }
        if (empty($Last_name)) {
            header("Location: signup.html?error=Last Name is required");
            exit;
        }
        if (empty($Age)) {
            header("Location: signup.html?error=Age is required");
            exit;
        }
        if (empty($radio_buttons)) {
            header("Location: signup.html?error=Field is required");
            exit;
        }
        if (!validateEmail($Email_address)) {
            header("Location: signup.html?error=Invalid Email format");
            exit;
        }
    
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "semesterproject";
    
        $conn = new mysqli($servername, $username, $password, $dbname);
    
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
         $sql = "SELECT Email_address FROM signup WHERE Email_address = '$Email_address' And radio_button = '$radio_buttons'
                UNION
                SELECT Email_address FROM nimc WHERE Email_address = '$Email_address' AND radio_button = '$radio_buttons'
                UNION
                SELECT Email_address FROM frsc WHERE Email_address = '$Email_address' AND radio_button = '$radio_buttons'
                UNION
                SELECT Email_address FROM inec WHERE Email_address = '$Email_address' AND radio_button = '$radio_buttons'
                UNION
                SELECT Email_address FROM immigration WHERE Email_address = '$Email_address' AND radio_button = '$radio_buttons'";

             $result = $conn->query($sql);
         
             if ($result->num_rows > 0) {
                 $conn->close();
                 header("Location: signup.html?error=Email and field is already taken");
                 exit;
             }

    if ($radio_buttons == "NIMC") {
        $insert_sql = "INSERT INTO nimc (First_name, Last_name, Age, Email_address, password, radio_button) VALUES ('$First_name', '$Last_name', '$Age', '$Email_address', '$hashedPassword', '$radio_buttons')";
    } else if ($radio_buttons === "FRSC") {
        $insert_sql = "INSERT INTO frsc (First_name, Last_name, Age, Email_address, password, radio_button) VALUES ('$First_name', '$Last_name', '$Age', '$Email_address', '$hashedPassword', '$radio_buttons')";
    } else if ($radio_buttons === "INEC") {
        $insert_sql = "INSERT INTO inec (First_name, Last_name, Age, Email_address, password, radio_button) VALUES ('$First_name', '$Last_name', '$Age', '$Email_address', '$hashedPassword', '$radio_buttons')";
    } else if ($radio_buttons == "IMMIGRATION") {
        $insert_sql = "INSERT INTO immigration (First_name, Last_name, Age, Email_address, password, radio_button) VALUES ('$First_name', '$Last_name', '$Age', '$Email_address', '$hashedPassword', '$radio_buttons')";
    } else if ($radio_buttons == "STAFF") {
        $insert_sql = "INSERT INTO signup (First_name, Last_name, Age, Email_address, password, radio_button) VALUES ('$First_name', '$Last_name', '$Age', '$Email_address', '$hashedPassword', '$radio_buttons')";
    }

    if ($conn->query($insert_sql) === TRUE){
        $conn->close();
        header("Location: login.html");
        exit;
    } else {
        $conn->close();
        header("Location: signup.html?error=Error signing up");
        exit;
    }
}
?>



