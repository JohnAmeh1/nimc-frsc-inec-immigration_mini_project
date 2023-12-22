<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: green;
        }
        h1{
            color: white;
        }
        h2{
            color: white;
        }
        table{
            padding: 5px;
            border-radius: 10px;
            background-color: black;
        }
        th{
            padding: 10px;
            border-radius: 10px; 
            background-color: green;
        }
        td{
            padding: 10px;
            border-radius: 10px; 
            background-color: #fff;
        }
    </style>
    <title>Staff Page</title>
</head>
<body>
    <center>
        
    <h1>Welcome Staff members!</h1>
    <!-- Your staff page content here -->

    <h2>Non-Staff Members</h2>
    <table border="1">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
            <th>Email Address</th>
            <th>Account type</th>
        </tr>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "semesterproject";

        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
 
        $sql = "SELECT First_name, Last_name, Age, Email_address, radio_button FROM frsc WHERE radio_button != 'STAFF'
                UNION
                SELECT First_name, Last_name, Age, Email_address, radio_button FROM inec WHERE radio_button != 'STAFF'
                UNION
                SELECT First_name, Last_name, Age, Email_address, radio_button FROM nimc WHERE radio_button != 'STAFF'
                UNION
                SELECT First_name, Last_name, Age, Email_address, radio_button FROM immigration WHERE radio_button != 'STAFF'";
                

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row['First_name'] . "</td>";
                echo "<td>" . $row['Last_name'] . "</td>";
                echo "<td>" . $row['Age'] . "</td>";
                echo "<td>" . $row['Email_address'] . "</td>";
                echo "<td>" . $row['radio_button'] . "</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='5'>No non-staff members found.</td></tr>";
        }

        $conn->close();
        ?>
    </table>
    </center>
</body>
</html>
