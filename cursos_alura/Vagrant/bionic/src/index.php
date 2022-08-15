<html>
 <head>
  <title>Index - PHP</title>
 </head>
 <body>
 <?php echo "<p>Minha primeira página em PHP</p>"; ?>
 </body>
</html>
<?php
$ensino = 'Andre';
$formacao = array('PHP' => ',sou bonitão,', 'o Bonitão' => 'gostosão');

// Não concatenadas
echo "<p>Eu $ensino {$formacao['PHP']}";
echo " e também sou gostosão.</p>";

// // Concatenadas
// echo '<p>No ' . $ensino . ' sou bonitão e ' . $formacao['PHP'];
// echo ' e pode se tornar também '. $formacao['gostosão'] . '.</p>';


echo "<br/> <br/>Testando conexao <br /> <br />";
$servername = "192.168.56.19";
$username = "phpuser";
$password = "pass";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

echo "Conectado com sucesso";

?>