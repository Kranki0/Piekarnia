<?php
$mysql = new mysqli("localhost", "root", "", "piekarnia");
if ($mysql->connect_errno) {
    echo ("Nie udało się połączyć z bazą danych: ") . $mysql->connect_error;
    exit();
} else {
    echo ("Połączono z serwerem administratorskim<br>");
}

$sql = "SELECT * FROM klient";
if ($result = $mysql->query($sql)) {
    echo ("<br>Aktualni klienci: " . $result->num_rows . "<br>");

    if ($result->num_rows > 0) {
        echo "<table border='1'>";
        echo "<tr><th>ID</th><th>Imię</th><th>Nazwisko</th><th>Wiek</th><th>Miasto</th><th>Adres</th><th>Kod Pocztowy</th><th>Telefon</th><th>Adres Email</th></tr>";
        while ($row = $result->fetch_assoc()) { // fetch_assoc() pobiera kolejny wiersz z tych wyników i zwraca go jako tablicę asocjacyjną
            echo "<tr>";
            echo "<td>" . $row["id"] . "</td>";
            echo "<td>" . $row["imie"] . "</td>";
            echo "<td>" . $row["nazwisko"] . "</td>";
            echo "<td>" . $row["wiek"] . "</td>";
            echo "<td>" . $row["miasto"] . "</td>";
            echo "<td>" . $row["adres"] . "</td>";
            echo "<td>" . $row["kod_pocztowy"] . "</td>";
            echo "<td>" . $row["telefon"] . "</td>";
            echo "<td>" . $row["adres_email"] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "Brak danych";
    }
} else {
    echo "Błąd zapytania: " . $mysql->error;
}

$mysql->close();
?>

<?php
$mysql = new mysqli("localhost", "root", "", "piekarnia");
if ($mysql->connect_errno) {
    echo ("Nie udało się połączyć z bazą danych: ") . $mysql->connect_error;
    exit();
} 
$sql = "SELECT * FROM zamowienia";
if ($result = $mysql->query($sql)) {
    echo ("<br>Aktualne zamówienia: " . $result->num_rows . "<br>");

    if ($result->num_rows > 0) {
        echo "<table border='1'>";
        echo "<tr><th>Zamówienie ID</th><th>Klient ID</th><th>Rzecz</th><th>Ilość</th><th>Faktura</th></tr>";
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row["zamowienia_id"] . "</td>";
            echo "<td>" . $row["klient_id"] . "</td>";
            echo "<td>" . $row["rzecz"] . "</td>";
            echo "<td>" . $row["ilość"] . "</td>";
            echo "<td>" . $row["faktura"] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "Brak danych";
    }
} else {
    echo "Błąd zapytania: " . $mysql->error;
}

$mysql->close();
?>