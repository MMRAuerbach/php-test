<?php
include_once('lib/database.php');
include_once('lib/functions.php');

$houses = getHouses();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hallo wereld</title>
</head>
<body>
<h1> Hallo wereld</h1>

<?php
    var_dump($houses);
?>
</body>
</html>