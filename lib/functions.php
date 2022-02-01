<?php

function getHouses() {
    global $pdo;
    $query = $pdo->query("SELECT * FROM houses");

    return $query->fetchAll(PDO::FETCH_CLASS);
}