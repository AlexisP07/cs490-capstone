<?php include('login.php')?>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--Google API font library-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@800&display=swap">
    <link rel="stylesheet" href="login.css">
</head>
<body>

<form method="post" action="logform.php"  >    <!-- login form, posts info to website -->
    <div class="container">
        <h1>Login</h1>
        <p>Please fill in this form to sign into your account.</p>      <!-- login info collected, flagged if no data entered -->
        <hr>
        <div <?php if (isset($name_error)): ?> class="form_error" <?php endif ?>>
            <label for="username"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="username" id="username">
            <?php if (isset($name_error)): ?>
                <span><?php echo $name_error; ?></span>
            <?php endif ?>
  	     </div>
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
        
        <button type="submit" class="loginbtn" name="Login">Login</button>
    
        <hr>
        <p align="center">Need an account? <a href="/cs490-capstone/regform.php#">Register</a>.</p>   <!-- links to register page -->
        <p align="center"> <a href="/cs490-capstone/index.html#">Back to Home</a></p>                       <!-- links to home -->
    </div>
</form>

</body>
</html>