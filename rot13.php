<?php

function aTexto($cadena) {
	 
$partes = explode(" ", $cadena);

	foreach ($partes as $valor){
		
		$val_dec = bindec($valor);
		
		if ( ( ($val_dec >= 65 ) && ($val_dec <= 77) )  || ( ($val_dec >= 97 ) && ($val_dec <= 109) ) ) {
			$val_dec = bindec($valor)+13;
		}else		
		if ( ( ($val_dec >= 78 ) && ($val_dec <= 90) )  || ( ($val_dec >= 110 ) && ($val_dec <= 122) ) ) {
			$val_dec = bindec($valor)-13;
		}
		#echo bindec($valor)."  ".chr($val_dec)."  ";
	#echo bindec($valor)."  ".$val_dec."  ".chr($val_dec)."  |";
	echo chr($val_dec)."";
	}	
	
}

function aBinario($cadena) {
	
$partes = str_split($cadena);

	foreach ($partes as $valor){
		
		$val_dec = ord($valor);
		
		if ( ( ($val_dec >= 65 ) && ($val_dec <= 77) )  || ( ($val_dec >= 97 ) && ($val_dec <= 109) ) ) {
			$val_dec = ord($valor)+13;
		}else		
		if ( ( ($val_dec >= 78 ) && ($val_dec <= 90) )  || ( ($val_dec >= 110 ) && ($val_dec <= 122) ) ) {
			$val_dec = ord($valor)-13;
		}
	
	echo decbin($val_dec)." ";
	}	
	
}

	//$cadena="1010101 1101110 1101101 100000 1011001 1100010 1110100 1100101 1101110 1110001 1100010 100000 1000011 1101110 1100110 1101110 1100101 100000 1010010 1111001 100000 1000101 1110010 1100111 1100010 100000 1010001 1110010 100000 1010000 1100010 1110001 1110110 1110011 1110110 1110000 1101110 1110000 1110110 11000011 10110011 1100001 100000 1010111 1100010 1101111 1100010 1111010 1101110 1100110 100001 100001 100001";

	#echo str_rot13("hola");
	
	$cadena_txt = $_POST["txt_entrada"];
	$cadena_bin = $_POST["bin_entrada"];
	
 echo "<form method=post action=rot13.php>";
 echo "Introducir la cadena binaria: <br>";
	echo "<input type=\"text\" id=\"bin_entrada\" name=\"bin_entrada\"> <br>";
 echo "<input type=\"submit\" value=\"Decodificar\"><br><br>";

	if (!empty($cadena_bin) ){
		aTexto($cadena_bin);
	}
	
	echo "<br><br>Introducir el texto: <br>";
	echo "<input type=\"text\" id=\"txt_entrada\" name=\"txt_entrada\"> <br>";
 echo "<input type=\"submit\" value=\"Codificar\"><br><br>";
 
 if (!empty($cadena_txt) ){
		aBinario($cadena_txt);
	} 
 
	echo "</form>";

?>
