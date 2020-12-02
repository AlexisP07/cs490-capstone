<html>
 <head>
  <title>Register</title>
 </head>
<body>
<?php  

    $conn = new mysqli('localhost', 'root', '', 'capstone');
    
    if(isset($_POST['email'])){
        $email = $_POST['email'];
        $username = $_POST['username'];
        $password = $_POST['psw'];
        $passwordRepeat = $_POST['psw-repeat'];
        $passwordHash = password_hash($password, PASSWORD_BCRYPT);
        
        $sql = "SELECT * FROM register WHERE email='$email'";
        $result = mysqli_query($conn, $sql);
        
        if (mysqli_num_rows($result) > 0){
            $email_error = "Sorry, email already taken.";
        }
        else{
        $stmt = $conn->prepare("INSERT into register(email, username, password, passwordRepeat) values(?, ?, ?, ?)");
        $stmt->bind_param('ssss', $email, $username, $passwordHash, $passwordRepeat);
        $stmt->execute();
        }
    }
    
    mysqli_close($conn);
 ?> 
 </body>
</html> 