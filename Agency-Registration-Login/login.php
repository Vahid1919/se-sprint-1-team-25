<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/registration-login.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@100;200;300;400;700&display=swap" rel="stylesheet"> 

    <title>Document</title>
</head>
<body>
    <div class="hero">
        <video class="background-video" src="../video/background-video.mp4" autoplay muted loop></video>
        <div class="form">
            <div class="title">Login</div>
            <form class="form-flex" action="agent-login.php" method="POST">
                <input class="flex-items" type="text" name="email" placeholder="Email">
                <input class="flex-items" type="password" name="password" placeholder="Password">
                <input class="flex-items register-button" type="submit" value="Login">
            </form>
        </div>
        <div> <a href="../index.html#choice"><button class="back-button">BACK</button></a></div>

    </div>
</body>
</html>