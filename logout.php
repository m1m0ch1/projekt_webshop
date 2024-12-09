<?php

session_start();
session_destroy();  // sütik törlése megtörténik

echo "<p>Sikeres kijelentkezés</p>";
echo "<a href='/admin/'>Vissza az admin bejelentkezéshez</a>";