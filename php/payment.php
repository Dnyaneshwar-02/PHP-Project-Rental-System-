<?php
include('connect.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['Name'];
    $mobile = $_POST['Mobile'];
    $altermob = $_POST['Mobile1'];
    $email = $_POST['email'];
    $card = $_POST['card'];
    $cvv = $_POST['cvv'];
    $expiry = $_POST['expiry'];

    
    // Insert user data into the database
    $query = "INSERT INTO payment (Name, Mobile, Mobile1, email, card, cvv, expiry) VALUES ('$name', '$mobile', '$altermob', '$email', '$card', '$cvv', '$expiry')";

    if (mysqli_query($db, $query)) {
        echo '<script>
            alert("Payment successful!");
            window.location = "../home.html";
          </script>';
    } else {
        echo "Error: " . mysqli_error($db);
    }

    // Close the database connection
    mysqli_close($db);
}
?>
