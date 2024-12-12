<html>
    <head>
        <title>meu primeiro PHP</title>
</head>
<body>
<?php
//var_dump($_GET);
if ( empty($_GET)) {
    echo "nao vai rolar";
    header("location: login.html");
}
else if ( empty($_GET["nome"]) || empty($_GET["sobrenome"]) || empty($_GET["idade"]) ) {
    echo "faltou uns paranaue";
}
else{
    $nome = $_GET["nome"];
$sobrenome = $_GET["sobrenome"];
$idade = $_GET["idade"];
$ano = date("Y") - $idade;
echo "<center>hello world. ola $nome $sobrenome $idade</center>";
echo "<center>voce nasceu em $ano. </center>";
}
?>
</body>
</html>