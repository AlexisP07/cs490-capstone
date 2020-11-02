<html>
 <head>
  <title>Login</title>
 </head>
 <body>
<?php  

    $username = $_POST['username'];
    $password = $_POST['psw'];
     
    $conn = new mysqli('localhost', 'root', '', 'capstone');
    if($conn->connect_error){
        die('Connection Failed : '.$conn->connect_error);
    }
    else {
        $stmt = $conn->prepare("INSERT into login(username, password) values(?, ?)");
        $stmt->bind_param("ss", $username, $password);
        $stmt->execute();
        $stmt->close();
    }
    
    mysqli_close($conn);
 ?>

<script>location.href="/cs490-capstone/index.html#";</script>
	 
 </body>
</html>