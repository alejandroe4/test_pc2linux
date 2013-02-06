<?php

	class pato{ 
		private $tipo;
		private $class_tipo;

  		public function __construct($tipo1){
    $this->tipo=$tipo1;
    
    if ( strcmp($tipo1, "MallardDuck") == 0 ){
    			$this->class_tipo = MallardDuck::getInstance();
    	}
    	if ( strcmp($tipo1, "RedheadDuck") == 0 ){
    			$this->class_tipo = RedheadDuck::getInstance();
    	}
    	if ( strcmp($tipo1, "RubberDuck") == 0 ){
    			$this->class_tipo = RubberDuck::getInstance();
    	}
    	if ( strcmp($tipo1, "DecoyDuck") == 0 ){
    			$this->class_tipo = DecoyDuck::getInstance();
    	}

  		}
  		
  		public function volar(){
  				#echo var_dump($this->class_tipo);
  				if (isset($this->class_tipo )){
  						if(method_exists($this->class_tipo,'volar')){
  								$this->class_tipo->volar();
  						}else {
  							echo "Esa acción no se puede realizar";
  						}
  				}else {
  						echo "Esta especie de pato no existe";
					}  				
  		}
  		
  		public function graznar(){
  			if (isset($this->class_tipo )){
  					if(method_exists($this->class_tipo,'graznar')){
  								$this->class_tipo->graznar();
  						}else {
  							echo "Esa acción no se puede realizar";
  						}
  				}else {
  						echo "Esta especie de pato no existe";
  				}
  		}

			public function display(){
				echo $this->tipo;
				}
				
			public function nadar() {
				echo "el pato esá nadando";
			}
  		
		}

	class MallardDuck {
		    
    public static function getInstance() {
        return ( new MallardDuck() );
    }		
		
				public function graznar() {
						echo "el pato esá graznando";
				}
				
				public function volar() {
						echo "el pato esá volando";
				}			
		}

	class RedheadDuck {

			public static function getInstance() {
        return ( new RedheadDuck() );
    }		
		
				public function graznar() {
						echo "el pato esá graznando";
				}
				
				public function volar() {
						echo "el pato esá volando";
				}
		}
		
	class RubberDuck {
		
			public static function getInstance() {
        return ( new RubberDuck() );
    }		
    
				public function graznar() {
						echo "el pato esá chillando";
				}
		}
	
	class DecoyDuck {
		
				public static function getInstance() {
        return ( new DecoyDuck() );
    }
				
		}		
	
	echo "Patos<br><br>";
	$md = new RedheadDuck("rd");
	$mipato = new Pato("MallardDuck");
	
	$mipato->display();
	echo "<br>";
	$mipato->volar();
	echo "<br>";
	$mipato->nadar();
	echo "<br>";
 $mipato->graznar();		
	
	echo "<br><br>";
	$mipato = new Pato("RedheadDuck");
	
	$mipato->display();
	echo "<br>";
	$mipato->volar();
	echo "<br>";
	$mipato->nadar();
	echo "<br>";
 $mipato->graznar();	
	
	echo "<br><br>";
	$mipato = new Pato("RubberDuck");
	
	$mipato->display();
	echo "<br>";
	$mipato->volar();
	echo "<br>";
	$mipato->nadar();
	echo "<br>";
 $mipato->graznar();
 
 echo "<br><br>";
	$mipato = new Pato("DecoyDuck");
	
	$mipato->display();
	echo "<br>";
	$mipato->volar();
	echo "<br>";
	$mipato->nadar();
	echo "<br>";
 $mipato->graznar();
 
 
?>