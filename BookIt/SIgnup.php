<?php


if(isset($_POST['submit'])){

    $host = "localhost";  
    $user = "root";  
    $password = '';  
    $db_name = "signup";  
      
    $con = mysqli_connect($host, $user, $password, $db_name);  
    if(mysqli_connect_error()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    } 

    
    
    $name=$_POST['username'];
    $email=$_POST['email'];
    $pass=$_POST['password'];
    $cpass=$_POST['cpassword'];
    $user_type="user";
    $query="INSERT INTO signup(`name`, `email`, `pass`, `cpass`, `user_type`) VALUES ('$name', '$email', '$pass', '$cpass', '$user_type')";
    $select = " SELECT * FROM signup WHERE email = '$email' && pass = '$pass' ";

    $result = mysqli_query($con, $select);




    if(mysqli_num_rows($result) > 0){

      $error []= 'user already exist!';
      


    }else{

        if($pass != $cpass){
            // echo '<script type ="text/JavaScript">';  
            // echo 'alert("Passwords do no match")';  
            // echo '</script>';
            // sleep(3);
            // header('location:index.html');  
            header( "refresh:3;url=index.html" ); 
            echo 'Passwords do not match.Please sign up again'; 
           
        }else{
        
           mysqli_query($con,$query);
           
           
            header( "refresh:0;url=index.html" ); 
            echo '<script type ="text/JavaScript">';  
            echo 'alert("Thank you for registering. You can login now")';  
            echo '</script>'; 
            //echo 'You have successfully registered.';
        }
    }
}




    if(isset($error)){
        foreach($error as $error){
                echo '<span class="error-msg">'.$error.'</span>';
         };
     };


?>
