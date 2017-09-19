<html>



<?php
/**
 * Created by PhpStorm.
 * User: jaredwada
 * Date: 12/14/15
 * Time: 9:31 PM
 */
$dbconn = pg_connect("dbname=jwada user=jwada password=0470594");
$Player = $_POST["pname"];

$Query = pg_query($dbconn, "SELECT (Name, Num, TeamName) FROM PLAYER WHERE Name = '$Player'");

if (!$Query) {
    echo "An error occurred.\n";
    link ("/Index.php" , "Click here to go back to the index");
    exit;
}

while ($row = pg_fetch_row($Query)) {
    echo "Name: $row[0]  Number: $row[1] Team: $row[2]";
    echo "<br />\n";
}

?>


<a href="index.php">Click Here To Go Back To The Main Page</a>



</html>
