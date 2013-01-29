 <?php

echo "GeoIP <br> <br>";

require_once "/usr/local/lib/php/Net/GeoIP.php";

$geoip = Net_GeoIP::getInstance("/home/alejandro/Descargas/GeoIP.dat");

echo "Server name : ";
echo $_SERVER['SERVER_NAME'];
echo "<br><br>";

echo "El país donde está el servidor de google 74.125.227.84 es : ";

try {
    //echo $geoip->lookupCountryName('189.203.193.52'); //este es de méxico de www.puebla.gob.mx
    echo $geoip->lookupCountryName('74.125.227.84');
} catch (Exception $e) {
    // Handle exception
}
?>
