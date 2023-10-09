<?php 
    include("db_conn.php");
    $country = $_POST['country_id'];
    $query2= "SELECT * FROM `states` where countries_id = '".$country."'";
    $final2=mysqli_query($connect,$query2);
    // $result = mysqli_fetch_assoc($final2);
    $option = '<option >select State</option>';
    while($my = mysqli_fetch_assoc($final2)){

        $option .= '<option value='.$my['id'].'>'.$my['states_name'].'</option>';
    }
    echo $option; 
    //this is commente
?>