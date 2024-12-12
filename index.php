  <?php 
if (!empty($_GET["erro"])){
    $erro = $_GET["erro"];
}
else{
    $erro = 0;
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Login</title>
    <link rel="icon" type="image/png" href="img/favicon.png">
    <link rel="stylesheet" href="css/style.css">
   
</head>
<body>
    <script>
        var erro = <?php echo $erro;?>;
    </script>
    <div class="login-container">
        <h1>Página de Login</h1>
        <div class="login-content">
            <!-- Imagem ao lado -->
            <div class="login-image">
                <img src="https://onsafety.com.br/wp-content/uploads/2017/03/tecnologia-cultura-1-1024x554.jpg" alt="Imagem de Tecnologia">
            </div>
            <!-- Formulário de login -->
            <form name="usuario" id="login-form" class="login-form" action="login.php" autocomplete="off"   method="post">
                <label for="email">Usuário (e-mail)</label>
                <input type="text" id="email" name="email" placeholder="Digite seu e-mail" autocomplete="off" minlength="6" maxlength="25" required  value ="juan@.com">

                <label for="senha">Senha</label>
                <input type="password" id="senha" name="senha" placeholder="Digite sua senha" autocomplete="off" minlength="3" maxlength="8" required  required value="349349">

                <button type="submit">Entrar</button>
            </form>
        </div>
        <!-- Mensagem de erro -->
        <div id="overlay" class="overlay">
            <div id="erroBox" class="erro-box">
                <button class="close-btn" onclick="fecharErro()">X</button>
                <span id="mensagemErro"></span>
            </div>
            </div>
        </div>
    </div>
     <script src="js/sketch.js" defer></script>
</body>
</html>

