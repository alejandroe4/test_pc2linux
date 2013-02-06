<?php

function peso($p,$original) {
	$peso = 0;
	$len_org = strlen($original);
	$len     = strlen($p);
	
	for ($i=0; $i < $len_org; $i++ ){

					if($i < $len) {
							$val1 = ord($p[$i])-96;
							$val2 = ord($original[$i])-96;
							$val = abs($val2-$val1);
							
							$peso = $peso + ($len_org-($i+1))*$val;
							//$peso = $peso + ($len_org-($i+1))*$val;
							//$peso = $peso + $val;
					}	
		}
		//if($len > $len_org) {

				for ($j=$i; $j<$len; $j++){
							$val = ord($p[$j])-96;
							$k = $j-$i+4;
							//echo $val." ".$k." ";
							$peso = $peso + ($k)*13;
				}
		//}
		return $peso;
}

function masCercana($palabras, $palabra){
	
	$palabraMasCercana = "";
	$valor = 5000;
	
	$peso_org = peso($palabra, $palabra);			
	
	foreach($palabras as $p){
			
			$peso = peso($p,$palabra);
			
			if ( abs( $peso-$peso_org ) < $valor){
					$valor = abs( $peso-$peso_org );
					$palabraMasCercana = $p;
			}	

			echo $p."  ".$peso."<br>";
	}
	
	echo "<br>";
	echo "la más cercana a ".$palabra." es : ";
	return $palabraMasCercana;
}

echo "<br><br>Mi método<br><br>";
$arreglo = array("impreciona","impresiona","aprecias","imprime","impreso","jorge","impresion");

echo masCercana($arreglo,"imprecion"); // resultado: impresion

	echo "<hr><br><br>Levenstein<br><br>";
	foreach($arreglo as $e){
		echo $e." ".levenshtein("imprecion", $e)."<br>";
	}
?>