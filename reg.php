<?php include('checkreg.php') ?>
<html>
<head>
  <title>Register for an account</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--Google API font library-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@800&display=swap">
  <link rel="stylesheet" href="register.css">
</head>
<body>
  <form action="register.php" method="post" > <!-- form, posting info to website -->
      <div class="container">
        <h1>Register</h1>
        <p>Please fill in this form to create an account.</p>       <!-- gathering info for registration, flags when info not entered -->
        <hr>
      <div <?php if (isset($name_error)): ?> class="form_error" <?php endif ?> >
        <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" id="email" required value="<?php echo $username; ?>">
        <?php if (isset($name_error)): ?>
        <span><?php echo $name_error; ?></span>
        <?php endif ?>
      </div>
      <div>
        <label for="username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" id="username" required>
      </div>
      <div>
        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
      </div>
      <div>
        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
      </div>
      <hr>
      <div>
         <button type="submit" class="registerbtn" name="Register">Register</button>
      </div>
      <hr>
      <p align="center">Already have an account? <a href="/cs490-capstone/signin.html#">Sign in</a>.</p> <!-- links to sign in -->
      <p align="center"><a href="/cs490-capstone/index.html#">Back to Home</a></p>    <!-- links back home -->
      </div>
  </form>
</body>
</html>

