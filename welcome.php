<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; text-align: center;
            background-image: url('psn02.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;}
    </style>
</head>
<body>

    <div class="page-header">
        <h1> Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>.</h1>
        <h1> Here are the selection of options available </h1>
    </div>
    <p>
        <a href="games.php" class="btn btn-primary">Check Out Available Games</a>
        <a href="subscription.php" class="btn btn-success">Subscription Details</a>
        <a href="accessories.php" class="btn btn-info">Check Out The Accessories</a>
        <a href="reset-password.php" class="btn btn-warning">Reset Your Password</a>
        <a href="logout.php" class="btn btn-danger">Sign Out Of Your Account</a>
    </p>
</body>
</html>