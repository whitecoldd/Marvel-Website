<?php
// create a connection
$conn = mysqli_connect('localhost', 'root', '', 'marvel heroes');
$query = 'SELECT * FROM heroes';

$result = mysqli_query($conn, $query);

$heroes = mysqli_fetch_all($result, MYSQLI_ASSOC);

$query = "DELETE FROM heroes ORDER BY hero_id DESC LIMIT 1";

if(mysqli_query($conn, $query)){
    echo 'Hero deleted..';
    }
else{
    echo " Error: ". mysqli_error($conn);
    }
echo json_encode($heroes);  

?>