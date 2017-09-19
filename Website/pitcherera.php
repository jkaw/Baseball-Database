<html>

<?php
/**
 * Created by PhpStorm.
 * User: jaredwada
 * Date: 12/15/15
 * Time: 5:43 PM
 */

$dbconn = pg_connect("dbname=jwada user=jwada password=0470594");
if ($dbconn) {
    echo "Connection established <br/>";
}
$first = $_POST["pname"];

$Query = pg_query($dbconn, "select * from pitches where pitches.pitname = '$first' and pitches.outcome = 'out'");
$Querya = pg_query($dbconn, "select * from pitches where pitches.pitname = '$first' and pitches.outcome = 'rbi'");
$row = pg_fetch_row($Query);
$Innings = $row[0];
$rowa = pg_fetch_row($Querya);
$Runs = $rowa[0];
$A = (int)$Innings;
$B = (int)$Runs;
$Erap1 = $B * 9;
$Era = $Erap1 / $Innings;

if(!$Query or !$Querya) {
    echo pg_last_error($dbconn);
    link ("/Index.php" , "Click here to go back to the index");
    exit;
}
echo "$Era";






?>





</html>

