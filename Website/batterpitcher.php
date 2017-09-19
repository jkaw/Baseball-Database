<html>



<?php
$dbconn = pg_connect("dbname=jwada user=jwada password=0470594");
if ($dbconn) {
    echo "Connection established <br/>";
}
$first = $_POST["bname"];
$second = $_POST["pname"];
$third = $_POST["btname"];
$fourth = $_POST["ptname"];
$Query = pg_query($dbconn, "select count(*) from pitches where pitches.pitteamname = '$fourth' and pitches.batteamname = '$third' and pitches.batname = '$first' and (pitches.outcome = 'out' or pitches.outcome = 'hit' or pitches.outcome = 'rbi') and pitches.pitname = '$second'");
$Querya = pg_query($dbconn, "select count(*) from pitches where pitches.pitteamname = '$fourth' and pitches.batteamname = '$third' and pitches.batname = '$first' and (pitches.outcome = 'rbi' or pitches.outcome = 'hit') and pitches.pitname = '$second'");
$row = pg_fetch_row($Query);
$_allbats = $row[0];
$rowa = pg_fetch_row($Querya);
$hits = $rowa[0];
$A = (int)$_allbats;
$B = (int)$hits;
$C = $B/$A;
if(!$Query or !$Querya) {
    echo pg_last_error($dbconn);
    link ("/Index.php" , "Click here to go back to the index");
    exit;
}

echo "$C";

/**
 * Created by PhpStorm.
 * User: jaredwada
 * Date: 12/15/15
 * Time: 3:32 PM
 */





?>



</html>