<?php
require "connect.php";

function getTable($table) {
    global $db;
    $sql = $db->prepare("SELECT * FROM $table");
    $sql->execute();
    $result = $sql->fetchAll(PDO::FETCH_ASSOC);
  return $result;
}



function showTable($table){
    
    $users = getTable($table);

    // cím
    echo "<h1> $table </h1>";

    // táblázat kezdés
    echo "<table border='1'>";

    // táblázat fejléce
    echo "<tr>";
    foreach($users[0] as $nev => $adat){
        echo "<td>";
            echo "<b>$nev</b>";
        echo "</td>";
    }
    echo "</tr>";

    // táblázat sorai
    foreach ($users as $user) {
        echo "<tr>";    // sor
            foreach ($user as $adat) {
                echo "<td>";     // cella
                    echo $adat;
                echo "</td>";
            }
        echo "</tr>";
    }
    
    echo "</table>";

}



// API végpontok, amiket le lehet kérni
//    index.php?tabla=products
//    index.php?tabla=purchase
//    index.php?tabla=categories

if(isset($_GET["tabla"]) && $_GET["tabla"] == "products" ){
  echo json_encode( getTable("products") );
}
else if(isset($_GET["tabla"]) && $_GET["tabla"] == "purchase" ){
  echo json_encode( getTable("purchase") );
}
else if(isset($_GET["tabla"]) && $_GET["tabla"] == "categories"){
  $termekek = getTable("products");
  $kategoriak = [];  // how to add element into php array
  foreach($termekek as $termek)
    foreach($termek as $nev => $adat){
      if( $nev == "category"){
        $kategoriak[] = $adat;
      }
    }
  $kategoriak = array_unique($kategoriak);
  echo json_encode($kategoriak);
}


