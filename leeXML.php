<?php

// FUNCIÓN DE CONEXIÓN CON LA BASE DE DATOS MYSQL
function conectaDb()
	{
    try {
        //$db = new PDO("mysql:localhost", "root", "PC2linux");
        $db = new PDO("mysql:host=localhost;dbname=anuncios", "root", "PC2linux");
        $db->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, TRUE);
        $db->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
        return($db);
    } catch (PDOException $e) {

        print "<p>Error: No puede conectarse con la base de datos.</p>\n";
							print "<p>Error: " . $e->getMessage() . "</p>\n";

        exit();
    }
	}

				$str_log="";
				
				$hora_ini = date("d/m/y H:i:s");
				$numInsert = 0;
				$numBorrad = 0;
				
				$fh = fopen("/usr/local/apache2/pruebas/log.txt", "a+");
    //$xml = file_get_contents('http://casas.trovit.com.mx/index.php/cod.rss_homes/type.1/what_d.casas%20puebla/');
    //$xml = file_get_contents('http://www.mercadolibre.com.ar/jm/searchXml?as_categ_id=1743');
    $xml = file_get_contents($_POST["url"]);
    
    $sxe = new SimpleXMLElement($xml);

    $db = conectaDb();
    
    $item = $sxe->xpath('//title');
    $objeto = $item[0];
 
    $item = $sxe->xpath('//item');
     
    //recorro los objetos 
    foreach ($item as $i) {
    		
					//echo 'Title '.$i->title . '<br>';
					$titulo = $i->title;
					//echo 'Desc '.$i->description . '<br>';
					$desc = $i->description;
					//echo 'Link '.$i->link . '<br>';
					$link = $i->link;
					
					#si contiene alguna imagen
					$imagen = $i->image_url;
					if($imagen <> ""){
						$url = $imagen;
						//$img = 'imagen.jpg';
						$partes = explode("=", $imagen);
						
						$nom_img="aux1.jpg";
						foreach	($partes as $valor){
							
						$pos = strpos($valor,".jpg");
							
								if ( $pos !== false ){
									$nom_img=$valor;
								}
							
						}	
						
						$img = '/usr/local/apache2/pruebas/'.$nom_img;
						file_put_contents($img, file_get_contents($url));						
					}

		
				try{
					$sth = $db->prepare("INSERT INTO articulos (objeto,titulo,`desc`,vinculo) VALUES ('$objeto','$titulo','$desc','$link') ");

					$sth->execute();
					
					$numInsert++;
				
					//echo "<h3>Datos guardados</h3>";
				}catch(PDOException $e){
						echo $e->getMessage()."<br><br>";
						$numBorrad++;
				}
   	
   	}//fin foreach elemento de la página
   	
   	 $hora_fin = date("d/m/y H:i:s");
   	 
   	 $str_log = $hora_ini."  ".$hora_fin."  Insert: ".$numInsert."  No insert".$numBorrad."\n";
   	
				fputs($fh, $str_log);
   	
?>
