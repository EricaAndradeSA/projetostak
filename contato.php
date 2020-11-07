<?php
$servername="localhost";
$username="root";
$password="";
$database="fseletro";

$conn = mysqli_connect ($servername,$username,$password,$database);
if(!$conn){
    die("A conexão ao banco de dados falhou" . mysqli_connect_error());
}

if(isset($_POST['nome']) && isset($_POST['msg'])){
    $nome = $_POST['nome'];
    $msg = $_POST['msg'];

    $sql = "INSERT INTO comentarios (nome, msg, data) values ('$nome', '$msg', NOW())";
    $result = $conn->query($sql);
}

?>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Full stack Produtos</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="index.js"></script>

    </head>
<body>
<div class="container">
    <!-- Menu -->
    <?php
    include_once('menu.html');
    ?>
    <!-- Menu -->
    <br>
    <br>
    <br>

    <h2>Contato</h2>
  
    <hr>
    
<div>    
        <img src="./imagem/email.jpg" alt="email" class="whats1">
        <p class="co1">contato@fullstackeletro.com</p>

        <img src="./imagem/whats.jpg" alt="email" class="whats2">
        <p class="co2"> Whatsap 11-3245-0987</p>
        <br>
        <br>
        <br>

<div class="container">
  <h2>Deixe sua mensagem</h2>
  <form action="" method="post">
    <div class="form-group">
      <label for="nome">nome:</label>
      <input type="text" class="form-control" id="nome" placeholder="Digite seu nome" name="nome">
   
      <label for="text">mensagem:</label>
      <input type="text" class="form-control" id="msg" placeholder="Digite sua mensagem" name="msg">
    </div>
    <button type="submit" class="btn btn-dark">Enviar</button>
  </form>
</div>

<div class="container">
<?php

    $sql = "select * from comentarios";
    $result = $conn->query($sql);
    if($result->num_rows > 0){
        while($rows = $result->fetch_assoc()){
            echo "data:" , $rows['data'], "</br>";
            echo "nome:" , $rows['nome'], "</br>";
            echo "mensagem:" , $rows['msg'], "</br>";
            echo "<hr>";
            
        }
    }else{
        echo "Nenhum comentário ainda!";
    }
?>
</div>

<footer id="rodape">
    <p>Nossos contatos</p>
    <img src="./imagem/redes.jpg" alt="Formas de pagamentos" />
    <p>&copy; Recode Pro</p>
</footer>

</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>