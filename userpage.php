<?php
@include 'config.php';


session_start();

if(!isset( $_SESSION['user_email'])){
    header('location:login_form.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Page</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">

    <div class="content">
        <h3>Hi   <span>user</span> ,</h3>
        <h1>welcome<span> <?php echo$_SESSION['user_email']?></span></h1>
        <br>
        <a href="login_form.php"  class="btn"><b>Login</b></a>
        <a href="register_form.php"  class="btn"><b>Register</b></a>
        <a href="animelists.php"  class="btn"><b>Create Your Reminder</b></a>
        <a href="logout.php"  class="btn"><b>Log Out</b></a>
       
    </div>
    </div>
    
</body>
</html>