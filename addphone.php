<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body style="background-image: url('1567838.jpg')">


<nav class="navbar navbar-expand-sm bg-danger navbar-dark">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link " href="#"> Product Review System - ADMIN </a>
            </li>

            

            <li class="nav-item active">
                <a class="nav-link " href="allreviews.php">All Reviews </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link " href="addphone.php">Add Phone</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="index.php">LogOut</a>
            </li>

        </ul>
    </nav>
    <br><br><br><br><br><br>
    <div class="container">
        <div class="row">
            <div class="col col-sm-2">


            </div>

            <div class="col col-sm-8 col-12">
            <form method="POST" enctype="multipart/form-data">
                    <table class="table">
                        <tr>
                            <td></td>
                            <td>
                                <h4>
                                    <p class="text-danger"> ADD PHONE- ADMIN</p>
                                </h4>
                            </td>
                        </tr>
                        <tr>
                            <td>PHONE NAME</td>
                            <td><input type="text" class="form-control" name="phone"></td>
                        </tr>

                        <tr>
    <td>image</td>
    <td><input name="fileToUpload" class="form-control" type="file"></td>
</tr>

                        <tr>
                            <td></td>
                            <td><button class="btn btn-success" name="but" type="submit">SUBMIT</button></td>
                        </tr>


                        <tr>
                            <td></td>
                        </tr>


                    </table>
                </form>

            </div>


            <div class="col col-12 col-sm-2">


            </div>


        </div>

    </div>

</body>

</html>



<?php
session_start();
include './db.php';
if (isset($_POST["but"])) {

    $phone = $_POST["phone"];

    $target_dir = "images/";
    $target_file = $target_dir . rand(999, 9999) . basename($_FILES["fileToUpload"]["name"]);
    // $Image = $connection->real_escape_string($target_file);
    $testage = $connection->real_escape_string($target_file);

    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {

      echo "<script>alert('File Uploaded successfully')</script>";

        // echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
    } else {
      echo "<script>alert('File Uploading Failed')</script>";
    }




    $sql = "INSERT INTO `products`( `name`,image) VALUES ('$phone', '$testage') ";
    $res = $connection->query($sql);


    if ($res===TRUE) {

        echo "<script>alert('Added Succesfully')  </script>";


    } else {
        echo "<script>alert('Error')  </script>";
    }
}


?>