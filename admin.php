<?php
require "../api.php";

// elindítjuk a sütikezelést
session_start();

// védjük az admin felületet
// csak ha bejelenetkezett igaz, akkor jelenik meg
if( $_SESSION["bejelentkezett"] == true ){

  echo "<h1>Admin felület</h1>";
  echo "<a href='logout.php'>Kijelentkezés  </a>";

  showTable("users");
  showTable("purchase");
  showTable("products");
  
  
}
else
{
  echo "<p>Nincs bejelentkezve!</p>";
}
