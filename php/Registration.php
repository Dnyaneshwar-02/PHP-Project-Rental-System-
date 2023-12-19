<?php
include('connect.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['Name'];
    $mobile = $_POST['Mobile'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Insert user data into the database
    $query = "INSERT INTO register (Name, Mobile, email, username, password) VALUES ('$name', '$mobile', '$email', '$username', '$password')";

    if (mysqli_query($db, $query)) {
        echo '<script>
            alert("Registration successful!");
            window.location = "../login.html";
          </script>';;
    } else {
        echo "Error: " . mysqli_error($db);
    }

    // Close the database connection
    mysqli_close($db);
}
?>
