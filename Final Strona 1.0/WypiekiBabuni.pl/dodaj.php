<?php

require("polaczenie.php");

$imie = $_POST['imie'];
$nazwisko = $_POST['nazwisko'];
$wiek = $_POST['wiek'];
$miasto = $_POST['miasto'];
$adres = $_POST['adres'];
$kodpocz = $_POST['kodpocz'];
$telefon = $_POST['telefon'];
$email  = $_POST['email'];

$sql = "INSERT INTO klient(id, imie, nazwisko, wiek, miasto, adres, kod_pocztowy, telefon, adres_email, uwagi) 
VALUES ('','$imie','$nazwisko','$wiek','$miasto','$adres','$kodpocz','$telefon','$email','')";

$result = $connect->query($sql);
?>