<?php
require_once "connect.php";

function getTable($table) {
    global $db;
    $sql = $db->prepare("SELECT * FROM $table");
    $sql->execute();
    $result = $sql->fetchAll(PDO::FETCH_ASSOC);
  return $result;
}


function insertTable($table, $data){
    global $db;
    // keys : values
    // name : termékneve
    // price : ára
    // ...
    $oszlopok = implode( ", ", array_keys($data) );
    $ertekek = implode( ", ", array_values($data));
    
    
    $s = "INSERT INTO `$table` ($oszlopok) VALUES ($ertekek)";
    $sql = $db->prepare($s);

    $siker = $sql->execute();
    if( !$siker  ){
        echo "HIBA";
        echo $s;
    } else {
        echo "ok";
    }
}



function showTable($table){

    // lekéri az adatokat
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
//                         URL paraméterek
//  www.oldalneve.com/FÁJL?BEÁLLÍTÁS=ERTEK
//    api.php?tabla=products
//    api.php?tabla=purchase
//    api.php?tabla=categories
// Beállítás lekérése:
//  kül9nleges tömb
//  változó:   $_GET['beállítás']

// 1: ellenőrizzük, hogy létezik-e beállítás (isset)
// 2: melyik táblát írták be a webcímbe
if( isset($_GET["tabla"]) && $_GET["tabla"] == "products" ){
    $adat = getTable("products");
    echo json_encode( $adat  );
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


