<?php
// create a connection
$conn = mysqli_connect('localhost', 'root', '', 'marvel heroes');
$query = 'SELECT * FROM heroes';

$result = mysqli_query($conn, $query);

$heroes = mysqli_fetch_all($result, MYSQLI_ASSOC);

if(isset($_POST['logo'])){
    $logo = mysqli_real_escape_string($conn, $_POST['logo']);
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $pseudo = mysqli_real_escape_string($conn, $_POST['pseudo']);
    $power = mysqli_real_escape_string($conn, $_POST['power']);



    $query = "INSERT INTO heroes(hero_logo, hero_name, hero_pseudo, power_ab) VALUES('$logo', '$name', '$pseudo', '$power')"; 

    if(mysqli_query($conn, $query)){
        echo 'Hero added..';
    }
    else{
        echo " Error: ". mysqli_error($conn);
    }
}

echo json_encode($heroes);


?>