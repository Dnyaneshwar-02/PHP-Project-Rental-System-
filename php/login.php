<?php
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    include("connect.php");

    $User = $_POST['username'];
    $Password = $_POST['password'];

$query = "select * from register Where username = '$User'";

$result = mysqli_query($db, $query);

if($result) {
    if(mysqli_num_rows($result) > 0) {
        $userRow = mysqli_fetch_assoc($result);
        $storedPassword = $userRow['Password'];

        if($Password === $storedPassword) {
            echo '<script>
                    alert("Login Successful !! ");
                    window.location.href = "../mainpage.html";
                </script>';

        }else{
            echo '<script>
                    alert("Please check your Username & Password");
                    window.location.href = "../login.html";
                </script>';
        }

    }else{
        echo '<script>
                alert("User not found !! Register first to Vote !! ");
                window.location.href = "../Registration.html";
            </script>';
    }
}else{
    echo "Error: " . mysqli_error($db);
}

    mysqli_close($db);
}
?>