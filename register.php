<html>
 <head>
  <title>Register</title>
 </head>
<body>
<?php  

    function check_email_exist($conn, $email){              /* function calls procedure, check if inserted email is in register db */
        $sql = "CALL verifyEmail";
        $result = $conn->query($sql);
        if ($result < 0)
            echo '<script>alert("Registration Successful!")</script>';  /* email not found, successful reg */
        else
            echo '<script>alert("This email is already in use, please try again.")</script>';       /* email found, try again */
    }

    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['psw'];
    $passwordRepeat = $_POST['psw-repeat'];

    $passwordHash = password_hash($password, PASSWORD_BCRYPT);

    $conn = new mysqli('localhost', 'root', '', 'capstone');
    if($conn->connect_error){

    if(empty($_POST['email'])){
        die('Connection Failed : '.$conn->connect_error);
    }
    else{
        $stmt = $conn->prepare("INSERT into register(email, username, password, passwordRepeat) values(?, ?, ?, ?)");
        $stmt->bind_param('ssss', $email, $username, $passwordHash, $passwordRepeat);
        
        if( $stmt->execute() )
            check_email_exist($conn, $email);               /* stmt executed, go to function to check if email is in use already */
        else
            $stmt->close();
    }

    mysqli_close($conn);
 ?>

    <script>location.href="/cs490-capstone/index.html#";</script>       <!-- takes to home page after executed -->
    
 </body>
</html> 