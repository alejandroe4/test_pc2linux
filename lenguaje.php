<?php

$cad1 = "1*1*";
$cad2 = "**1";
$cad3 = "231";
$cad4 = "*1*1";
$cad5 = "*00*11*1*0*";
$cad6 = "1**";

//  /(<span title=.*>(.*)<\/span>)/Usm
  $cadena_1y0 = $_POST["lenguaje_1y0"];
  echo "<form method=post action=lenguaje.php>";
  echo "Lenguaje 1,0,*<br><br>";
  echo "<input type=\"text\" id=\"lenguaje_1y0\" name=\"lenguaje_1y0\"> <br>";
  echo "<input type=\"submit\" value=\"Revisar\"><br><br>";

	preg_match('/(\*{0,1}([0|1]+\*{0,1})*)/',$cadena_1y0,$res2); 

//	echo $res2[0]."<br>";


	if ( strcmp($cadena_1y0, $res2[0]) == 0 ){
		echo "La cadena ".$cadena_1y0." es correcta";
	}else {
		echo "La cadena ".$cadena_1y0." no es correcta";
	}

echo "<br><br><br>Lenguaje a,b,c<br><br>";

$cad1 = "baaaca";
$cad2 = "abc";
$cad3 = "bb";
$cad4 = "c";
$cad5 = "cca";
$cad6 = "otra";

 $cadena_abc = $_POST["lenguaje_abc"];
//$cadena = $cad1;
 echo "<input type=\"text\" id=\"lenguaje_abc\" name=\"lenguaje_abc\"> <br>";
 echo "<input type=\"submit\" value=\"Revisar\"><br><br>";
 echo "</form>";

	preg_match_all('/(([b|c]{0,1}a+[b|c]{0,1})*|[b|c])/',$cadena_abc,$res2);

	//echo var_dump($res2);
	
	//echo $res2[0][0]."<br>";
	$ant=0;
	foreach($res2[0] as $val){
		if ( strlen($val) > $ant){
				$ant = strlen($val);
				$res3 = $val;
			}
	}

	if ( strcmp($cadena_abc, $res3) == 0 ){
		echo "La cadena ".$cadena_abc." es correcta";
	}else {
		echo "La cadena ".$cadena_abc." no es correcta";
	}
?>