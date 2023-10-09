<?php
include("db_conn.php");
$query1= "SELECT * FROM `countries`";
$final1=mysqli_query($connect,$query1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>countries | state | cities</title>
</head>
<body class="container">
    <div class="row">
        <h3>Countries Dropdown</h3>
        <form action="#" method="post" id="city_form">
            <section class="courses-section">
                <div class="row">
                    <div class="col-md-4">
                        <label for="country">country</label>
                        <select type="text" name="country" id="country" class="form-control">
                            <option>select country</option>
                            <?php 
                                foreach($final1 as $country){ 
                                    echo "<option value='".$country['id']."'>".$country['countries_name']."</option>";
                                }
                            ?>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <label for="country">State</label>
                        <select type="text" name="state" id="state" class="form-control">
                        </select>
                    </div>
                    <div class="col-md-4">
                        <label for="country">city</label>
                        <select type="text" name="city" id="city" class="form-control">
                        </select>
                    </div>
                </div>
            </section>
            <br>
            <!-- <button type="submit">Submit</button> -->
        </form>
    </div>
</body>
<script>
    $(document).ready(function(){
        $("#country").change(function(e){
            var countryID = $(this).val();
            if(countryID){
            e.preventDefault();
            $.ajax({
                type:'POST',
                url:'get_state.php',
                data:{country_id:countryID},
                 success:function(response){
                    $('#state').html(response);
                    }
            });
            }
        });
        
        $('#state').change(function(e){
            var stateID = $(this).val();
            if(stateID){
                e.preventDefault();
                $.ajax({
                    type:'POST',
                    url:'get_city.php',
                    data:{state_id:stateID},
                    success:function(response){
                    $('#city').html(response);
                    }
                });
            }
        });
    });
</script>
</html>