
<html>
<body>
<?php
/**
 * Created by PhpStorm.
 * User: jaredwada
 * Date: 12/13/15
 * Time: 4:49 PM
 */

$dbconn = pg_connect("dbname=jwada user=jwada password=0470594");
if ($dbconn) {
    echo "Connection established <br/>";
}

$_first = $_POST["Handed"];
$_second = $_POST["Position"];
$_third = $_POST["name"];
$_fourth = $_POST["number"];
$_fifth = $_POST["team"];

$Query = pg_query($dbconn, "INSERT INTO PosPlayer VALUES('$_first', '$_second', '$_third', $_fourth, '$_fifth')");
if (!$Query) {
    echo "An error occurred.\n";
    link ("/Index.php" , "Click here to go back to the index");
    exit;
}
echo "Your Player has been added!\n";


?>

<br>
<a href="index.php">Click here to go back to the Index</a>
</body>
</html>
