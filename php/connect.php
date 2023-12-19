<?php
    $host='localhost';
    $username='root';
    $password='';
    $db= 'homerental';

    $db=mysqli_connect($host,$username,$password,$db);


    if(!$db)
        {
            echo"unable to connect".mysqli_error($db);die;
        }else{
            echo"database connected successfully";
        }    
?>
