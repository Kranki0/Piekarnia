<!doctype html>
<html lang="pl">

<head>
	<meta charset="utf-8">
	<meta name="description" content="WypiekiBabuni.pl">
	<meta name="keywords" content="WypiekiBabuni.pl">

	<title>Logowanie</title>
	<link rel="shortcut icon" href="rsz_1wypieki.png">

	<link rel="stylesheet" href="style.css" type="text/css">
	<link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700;900&display=swap" rel="stylesheet">

    <style>
		body
		{
			line-height:23px;
		}
		input
		{
			height:19px; 
			border-style:solid;
			border-color:black; 
			background-color:rgb(141, 97, 65);
			color:white;
		}
		button
		{
			color:white;
			background-color:rgb(71, 39, 15);
			border:solid;
			border-color:black;
		}
        form{
            height:120px;
        }
	</style>

</head>

<body>
	<div id="container">
		<div id="logo">
			<img src="rsz_1wypieki.png" alt="logo">
		</div>

		<div id="menu">
			<a href=taglowna.html>
				<div class="option"><b>Strona Główna</b></div>
			</a>
			<a href=Naszewypieki.html>
				<div class="option"><b>Nasze Wypieki!</b></div>
			</a>
			<a href=adminsite.php>
				<div class="option"><b>Adminsite</b></div>
			</a>
			<a href=formularz-wydarzenia.html>
				<div class="option"><b>Formularz - klienci</b></div>
			</a>
			<a href=FAQ.html>
				<div class="option"><b>FAQ</b></div>
			</a>
			<a href=media.html>
				<div class="option"><b>Media społecznościowe</b></div>
			</a>
			</a>
			<div style="clear:both;"></div>
		</div>

		<div id="topbar">
			<div id="topbar3">
            <form method="post" style="text-align:center">
        Login: <input type="text" name="login"> <br/>
        Hasło: <input type="password" name="haslo"> <br/>
        <input type="submit">
    </form>

    <?php
    @$login = $_POST['login'];
    @$haslo = $_POST['haslo'];
    switch(true)
    {
        case($login == "andrzej321" && $haslo == "cks"):
            header("Location: admin.php"); // Przekierowanie na strone test.php po poprawnym wpisaniu hasla przez admina
            exit(); // Zakonczenie dzialania skryptu po przekierowaniu
            break;

        default:
            echo("Niepoprawne hasło");
            break;
    }
    ?>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div id="footer">
			
		</div>


	</div>



</body>

</html>