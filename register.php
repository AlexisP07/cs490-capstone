<html>
 <head>
  <title>Register</title>
 </head>
 <body>
<?php  

    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['psw'];
    $passwordRepeat = $_POST['psw-repeat'];
     
    $conn = new mysqli('localhost', 'root', '', 'capstone');
    if($conn->connect_error){
        die('Connection Failed : '.$conn->connect_error);
    }
    else {
        $stmt = $conn->prepare("INSERT into register(email, username, password, passwordRepeat) values(?, ?, ?, ?)");
        $stmt->bind_param("ssss", $email, $username, $password, $passwordRepeat);
        $stmt->execute();
        $stmt->close();
    }
    
    mysqli_close($conn);
 ?>

<script>location.href="/cs490-capstone/index.html#";</script>
	 
 </body>
</html>