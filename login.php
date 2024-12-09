<?php

// ez egy sütit rak le a böngészőbe
// ami adatokat tárolhat
// ez jelzi, hogy valaki bejelentkezett
// munkamenet
session_start();

// $_POST egy beépített változó
// ebbe kerülnek az űrlap adatai
// admin@admin.hu admin
if($_POST["email"]  == "admin@admin.hu" &&  $_POST["jelszo"] == "admin" )
{
  $_SESSION["bejelentkezett"] = true;

  header("Location: admin.php");
}
else
{
  echo "Rossz email vagy jelszó.";
  echo "<a href='/admin/index.html'>Vissza az előző oldalra</a>";
}
      
