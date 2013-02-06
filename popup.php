<?php
      $user = $_POST["usuario"];
      $pass = $_POST["pass"];
?>

<html>
<head>

<script type="text/javascript" >
function abrirVentana(){
	ventana_secundaria = window.open("login.html","miventana","width=300,height=200,menubar=no")
}
</script>

</head>
<body>
<!--a href="/login.html" target="_blank" onClick="window.open(this.href, this.target, 'width=300,height=400'); return false;">Log In</a-->

<?php
      
      if ( empty($user) ){
      	echo "<button onclick=\"abrirVentana();\" id=\"login\" name=\"login\"> Log In </button>";
      }else{
      	//echo "Bienvenido ".$user." ".$pass."<br>";
						echo "Bienvenido ".$user."<br>";
      }
	
?>

<form id="miForm" method="post" action="popup.php">
<input type="hidden" id="usuario" name="usuario" value="">
<input type="hidden" id="pass" name="pass" value="">
</form>

</body>
</html>