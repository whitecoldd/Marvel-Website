<?php 

// create a connection
$conn = mysqli_connect('localhost', 'root', '', 'marvel heroes');
$query = 'SELECT * FROM heroes';

// get the result
$result = mysqli_query($conn, $query);

$heroes = mysqli_fetch_all($result, MYSQLI_ASSOC);

echo json_encode($heroes);
?>