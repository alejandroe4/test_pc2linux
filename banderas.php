<?php

$homepage = file_get_contents('http://www.jobomas.com/');

$chars = preg_match_all('/(<span title=.*>(.*)<\/span>)/Usm', $homepage, $resultados);

//echo var_dump($chars);
//echo var_dump($resultados);

echo "<br>Banderas en www.jobomas.com:<br>";
//echo $resultados[0][0];
//echo $resultados[0][1];
$i=0;
	foreach($resultados[0] as $val){
			echo $val."<br>";
			$i++;
	}

//$userinfo = "Name: <b>John Poul</b> <br> Title: <b>PHP Guru</b>";
//preg_match_all ("/<b>(.*)<\/b>/U", $userinfo, $pat_array);
//print $pat_array[0][0]." <br> ".$pat_array[0][1]."\n";


/*<span title="Empleos en Chile" onclick="javascript:window.location.href='http://CL.jobomas.com'" style="width: 48px;height: 36px;overflow: hidden;display: block;
										background: url(http://static.jobomas.com/Images/jobo_BANDERAS.png) no-repeat -159px 0px;">
										</span>
*/
?>
