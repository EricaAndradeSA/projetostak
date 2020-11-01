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
    <title>Full stack contato</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <!-- Menu -->
    <?php
    include_once('menu.html');
    ?>
    <!-- Menu -->

    <h2>Contato</h2>
    <br>
    <hr>
    <br>
    <br>
    <br>
    
    <br>
    <br>
<div>    
        <img src="./imagem/email.jpg" alt="email" class="whats1">
        <p class="co1">contato@fullstackeletro.com</p>

        <img src="./imagem/whats.jpg" alt="email" class="whats2">
        <p class="co2"> Whatsap 11-3245-0987</p>

        <br>
        <br>
        <br>
</div>
    <h3 style="text-overflow: clip">Deixe a sua mensagem</h3><br>
    <form method="post" action="">
        <p style="text-align: justify">nome: </p>
        <input type="text" name="nome" style="width:500px"><br><br>
        <p style="text-align: justify">mensagem: </p>
        <input type="text" name="msg" style="width:500px"><br><br>
        <input type="submit" name="button" value="Enviar"><br><br><br>
    <form> 


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
<br> <br>  
<br> <br>
<br> <br>

   

<footer id="rodape">
    <p>Nossos contatos</p>
    <img src="./imagem/redes.jpg" alt="Formas de pagamentos" />
    <p>&copy; Recode Pro</p>
</footer>
</body>
</html>