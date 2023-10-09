<?php 
include("db_conn.php");
    
    $state = $_POST['state_id'];
    $query3= "SELECT * FROM `cities` where states_id = '".$state."'";
    $final3=mysqli_query($connect,$query3);
    $option = '<option >select city</option>';
    while($my = mysqli_fetch_assoc($final3)){

        $option .= '<option value='.$my['id'].'>'.$my['cities_name'].'</option>';
    }
    echo $option;
?>