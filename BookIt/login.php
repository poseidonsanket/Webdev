<?php      
    
    $host = "localhost";  
    $user = "root";  
    $password = '';  
    $db_name = "signup";  
      
    $con = mysqli_connect($host, $user, $password, $db_name);  
    if(mysqli_connect_error()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }  
    session_start();
    if(isset($_POST['Login']))
    {
        $email= $_POST['email'];
        $pass= $_POST['password'];
        $user_type=$_POST['user_type'];
        $sql="INSERT INTO `ss` (`user`, `pass`) VALUES ('$email', '$pass');";
        $select = "SELECT * FROM signup WHERE email = '$email' && pass = '$pass' && user_type='$user_type'";
        mysqli_query($con,$sql);
        $result = mysqli_query($con, $select);

    if(mysqli_num_rows($result) > 0){

        $row = mysqli_fetch_array($result);

        if($row['user_type'] == 'admin'){

            $_SESSION['admin_name'] = $row['name'];
            header('location:admin.html');

        }elseif($row['user_type'] == 'user'){

            $_SESSION['user_name'] = $row['name'];
             header('location:user.html');

        }
     
        }else{
            header( "refresh:0;url=index.html" ); 
            echo '<script type ="text/JavaScript">';  
            echo 'alert("Incorrect Credentials. Please Try again.")';  
            echo '</script>';
   }
}


?>