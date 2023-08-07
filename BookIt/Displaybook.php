<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SEARCH</title>
</head>
<body>


    <?php

    
    $host= "localhost";  
    $user = "root";  
    $password = '';  
    $db_name = "collection";  
      
    $con = mysqli_connect($host, $user, $password, $db_name);  
    if(mysqli_connect_error()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }

    $search = $_REQUEST['search'];
    

    $query= "select title,author,description,quantity,price from books where title like '%$search%'";

    $result = mysqli_query($con,$query);

    if(mysqli_num_rows($result)>0)
 
    {

     

        if($row = mysqli_fetch_assoc($result))
        {
                    
         echo '<br>Title :'.$row["title"];
         echo '<br>Author :'.$row["author"];
         echo '<br>Descrition :'.$row["description"];
         echo '<br>quantity :'.$row["quantity"];
         echo '<br>Price :'.$row["price"];
         echo '<h2>Book Successfully Found!</h2>';
         
       
        $query = " select * from books ";
        $result = mysqli_query($con, $query);
        header( "refresh:3;url=Price.html" ); 
            echo '<script type ="text/JavaScript">';  
            echo 'alert("Book found! Redirecting to buy page.")';  
            echo '</script>';
        }
        else{
            echo "<center>No books found in the library by the name $query</center>" ;
            }
        
        
        
        
    }
        
        

    
?> 


















