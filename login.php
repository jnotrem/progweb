<?php
session_start();
if(!empty($_POST["email"]) || !empty($_POST["senha"])) {



include("connect.php");
//$email = "juan@.com";
$email = $_POST["email"];
$pass = $_POST["senha"];

$sql ="SELECT * FROM  login WHERE email = :email";
$stmt = $pdo->prepare($sql);
$stmt->bindParam(':email', $email);
$stmt->execute();

$usuarioEncontrado = $stmt->fetch();
//var_dump($usuarioEncontrado);
if(!$usuarioEncontrado){
    header("Location: index.php?erro=1");
    exit;
}
else {
    if(md5($pass) ==$usuarioEncontrado["senha"]){
        //echo "senha OK";
        $_SESSION["logado"] = true;
        $_SESSION["nome"] = $usuarioEncontrado["nome"];
        header("Location: painel.php");
        exit;
    }
    else{
    header("Location: index.php?erro=2");
    exit;
    }
    
   }
}
else {
    echo "não post";
}
?>