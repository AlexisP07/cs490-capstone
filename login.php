<html>
 <head>
  <title>Login</title>
 </head>
<body>
<?php  

    $conn = new mysqli('localhost', 'root', '', 'capstone');
    
     if(isset($_POST['username'])){
        $username = $_POST['username'];
        $password = $_POST['psw'];
        $passwordHash = password_hash($password, PASSWORD_BCRYPT);

        $sql = "SELECT * FROM register WHERE username='$username'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0){        
            $stmt = $conn->prepare("INSERT into login(username, password) values(?, ?)");
            $stmt->bind_param('ss', $username, $passwordHash);
            $stmt->execute();
        }
        else{
            $name_error = "Sorry, username not registered.";
        }
     }
    
    mysqli_close($conn);
 ?>
	 
 </body>
</html>