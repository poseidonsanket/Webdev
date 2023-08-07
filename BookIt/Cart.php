<?php

if(isset($_POST['submit'])){


    $host = "localhost";  
    $user = "root";  
    $password = '';  
    $db_name = "payment";  
      
    $con = mysqli_connect($host, $user, $password, $db_name);  
    if(mysqli_connect_error()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }
    
    
    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
    $country=$_POST['country'];
    $address=$_POST['address'];
    $city=$_POST['city'];
    $state=$_POST['state'];
    $postcode=$_POST['code'];
    $phone=$_POST['phone'];
    $email=$_POST['email'];

    $query="INSERT INTO detail(`fname`, `lname`, `country`, `address` , `city`, `state` , `postcode`, `phone`, `email`) VALUES ('$fname', '$lname', '$country', '$address', '$city', '$state', '$postcode', '$phone', '$email')";
    $result=mysqli_query($con,$query);

    if($result==true){
      echo "<h2>PAYMENT SUCCESSFULL</h2>";
    }
    else{
      echo "<h2>PAYMENT ERROR</h2>";
    }







  }
?>

