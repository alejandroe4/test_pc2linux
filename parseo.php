<?php
	$fh = fopen("parsear.txt", "r");
 
	//echo readfile("parsear.txt");	
	//$data = fread($fh, filesize("parsear.txt"));
	while ($data = fgets($fh) ){
		//echo $data."<br>";
		$ini=0;
		
			for ($i=0; $i<strlen($data); $i++){
				
				if ( ($data[$i]!=" ") && ($ini==0) ) {

					$ini=1;
					
					if ($data[$i]=="#"){
						break 1;
						#$i = strlen($data)+2;
					}
					
				}
				if ($ini==1){
					
					$ini_var=0;
					$aux_var="";

					if ($data[$i]=="$"){
								//echo $data[$i];
								$i++;
								
								while( ($data[$i]!=" ") && ($i < strlen($data)) ) {
									$aux_var = $aux_var.$data[$i];
									$i++;
								}

								$aux_var=chop($aux_var);
							
								$aValid = array('_'); 
								if(ctype_alnum(str_replace($aValid, '', $aux_var)) ) {
									echo "Nil ";
								
								}else{
									echo "$".$aux_var." ";
								}
							
					}else {
							echo $data[$i];
					}
				}//fin ini=1
				
				
			}//cierra for	
		echo "<br>";	
	}	
	
	fclose($fh);
	
	


	
?>