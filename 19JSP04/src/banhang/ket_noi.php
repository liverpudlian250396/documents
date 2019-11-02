<?php
    $connect = mysqli_connect("localhost","root","");
    mysqli_select_db($connect,"ban_hang");
    mysqli_query($connect,'SET NAMES "UTF8"');
?> 