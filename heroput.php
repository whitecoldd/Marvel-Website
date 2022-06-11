<?php
// create a connection
$conn = mysqli_connect('localhost', 'root', '', 'marvel heroes');
$query = 'SELECT * FROM heroes';

$result = mysqli_query($conn, $query);

$heroes = mysqli_fetch_all($result, MYSQLI_ASSOC);

if(isset($_POST['name1'])){
            $logo1 = mysqli_real_escape_string($conn, $_POST['logo1']);
            $name1 = mysqli_real_escape_string($conn, $_POST['name1']);
            $pseudo1 = mysqli_real_escape_string($conn, $_POST['pseudo1']);
            $power1 = mysqli_real_escape_string($conn, $_POST['power1']);



            $query = "UPDATE heroes SET hero_logo = '$logo1', hero_name = '$name1', hero_pseudo = '$pseudo1', power_ab = '$power1' WHERE hero_id=(SELECT MAX(a.hero_id) FROM heroes AS a)"; 

            if(mysqli_query($conn, $query)){
                echo 'Hero updated..';
            }
            else{
                echo " Error: ". mysqli_error($conn);
            }
        }

echo json_encode($heroes);


?>