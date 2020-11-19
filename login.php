<html>
 <head>
  <title>Login</title>
 </head>
 <body>
<?php  
     
    function check_user_exist($conn, $username){        /* function calls procedure, check if inserted username is in register db */
        $sql = "CALL verifyLogin";
        $result = $conn->query($sql);
        if ($result > 0)
            echo '<script>alert("Login successful!")</script>';         /* username found, successful login */
        else
            echo '<script>alert("This account does not exist.")</script>';       /* username not found, account doesn't exist */
    }
     
    $username = $_POST['username'];
    $password = $_POST['psw'];
    $passwordHash = password_hash($password, PASSWORD_BCRYPT);
     
    $conn = new mysqli('localhost', 'root', '', 'capstone');
    
     if(empty($_POST['username'])){
        die('Connection Failed : '.$conn->connect_error);
    }
    else{
        $stmt = $conn->prepare("INSERT into login(username, password) values(?, ?)");
        $stmt->bind_param('ss', $username, $passwordHash);
        
        if( $stmt->execute() )
            check_user_exist($conn, $username);             /* if stmt executes then run function to check if username exists */
        else
            $stmt->close();
    }
    
    mysqli_close($conn);
 ?>

     <script>location.href="/cs490-capstone/index.html#";</script>           <!-- takes to home page after executed -->
	 
 </body>
</html>