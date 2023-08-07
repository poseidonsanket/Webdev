<?php

 session_start();
 if (isset($_POST['submit'])) {


    $host= "localhost";  
    $user = "root";  
    $password = '';  
    $db_name = "collection";  
      
    $con = mysqli_connect($host, $user, $password, $db_name);  
    if(mysqli_connect_error()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }

    $title= $_POST['title'];
    
    $author= $_POST['author'];
    
    $description=$_POST['description'];
    
    $quantity=$_POST['quantity'];
   
    $price= $_POST['price'];
    

    $insert = "INSERT INTO books(title, author, description, quantity, price) VALUES('$title','$author','$description','$quantity','$price')";
         mysqli_query($con, $insert);

         header( "refresh:0;url=Admin.html" ); 
            echo '<script type ="text/JavaScript">';  
            echo 'alert("Book added successfully!")';  
            echo '</script>';
}
?>