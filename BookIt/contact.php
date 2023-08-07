<?php


if(isset($_POST['submit'])){


    $host = "localhost";  
    $user = "root";  
    $password = '';  
    $db_name = "contactus";  
      
    $con = mysqli_connect($host, $user, $password, $db_name);  
    if(mysqli_connect_error()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }

    $name=$_POST['name'];
    $email=$_POST['email'];
    $subject=$_POST['subject'];
    $message=$_POST['message'];

    $query="INSERT INTO information(`name`, `email`, `subject`, `message`) VALUES ('$name', '$email', '$subject', '$message')";
    $result=mysqli_query($con,$query);
    if($result==true){
        echo "<h2>Thanks For Contacting Us!!!!</h2>";
    }else{
        echo "<h2>Whopps Something Went Wrong</h2>";
    }

}
?>