<?php
// Database connection
$dbFile = 'database.sqlite'; // SQLite database file
try {
    $db = new PDO("sqlite:$dbFile");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Function to drop all tables except sqlite_sequence
    function dropAllTables($db) {
        $tables = $db->query("SELECT name FROM sqlite_master WHERE type='table' AND name != 'sqlite_sequence'")->fetchAll(PDO::FETCH_COLUMN);
        foreach ($tables as $table) {
            $db->exec("DROP TABLE IF EXISTS $table");
        }
    }

    function removeSetStartDefaultLines($input) {
        // Split the input string into an array of lines
        $lines = explode("\n", $input);

        // Filter out lines that start with "SET " or "START "
        $filteredLines = array_filter($lines, function($line) {
            return !preg_match('/^(SET|START)\s/', trim($line));
        });

        // Process remaining lines to remove the specific phrase
        $filteredLines = array_map(function($line) {
            return str_replace('DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci', '', $line);
        }, $filteredLines);

        // Replace `id` column definition
        $filteredLines = array_map(function($line) {
            return str_replace('`id` int(11) NOT NULL', '`id` integer primary key autoincrement', $line);
        }, $filteredLines);

        // Remove all lines after "-- Indexek a kiírt táblákhoz"
        $filteredLines = array_slice($filteredLines, 0, array_search('-- Indexek a kiírt táblákhoz', $filteredLines) ?: count($filteredLines));

        // Join the remaining lines back into a single string
        return implode("\n", $filteredLines);
    }



    // Drop all existing tables
    dropAllTables($db);

    // Import SQL file
    
    $sqlFile = '/home/runner/Lukacs-Marcell-PHP-SQL/db.sql';
    $sql = file_get_contents($sqlFile);
    $sql = removeSetStartDefaultLines($sql);
    $db->exec($sql);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}