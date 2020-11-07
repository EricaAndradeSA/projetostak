
<?php
$servername="localhost";
$username="root";
$password="";
$database="fseletro";

//criando conexao com o banco de dados
$conn = mysqli_connect ($servername,$username,$password,$database);
// verificando conexão com o banco de dados
if(!$conn){
    die("A conexão ao banco de dados falhou" . mysqli_connect_error());
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
   <div class="container p-5 my-6">
    <!-- Menu -->
    <?php
    include_once('menu.html');
    ?>
    <!-- Menu -->
    
    <br>
    <br>
      
    <h1>Produtos</h1>
    
    <hr>
        
       
        <section class="categorias">          
            <h3>categorias</h3>
            <ul>
                    <li onclick="exibir_todos()"> todos (12)</li>
                    <li onclick="exibir_categoria('geladeira')"> geladeiras (3)</li>
                    <li onclick="exibir_categoria('cooktop')"> cooktop (3)</li>
                    <li onclick="exibir_categoria('microondas')"> microondas (3)</li>
                    <li onclick="exibir_categoria('forno eletrico')"> forno elétrico (3)</li>
            </ul>
        </section>
       
        <div class="produtos">

        <?php
            $sql = "select * from produtos";
            $result = $conn->query($sql);
            
            if ($result->num_rows > 0){
                while($rows = $result-> fetch_assoc()){
        ?>
            <div class=" col-3 box_produtos" style="display:inline-block;" id="<?php echo $rows["categoria"]; ?>">     
                <img src=" <?php echo $rows["imagem"]; ?>" width="120px" onclick="destaque(this)">
                <br>
                <div class="descricao"><?php echo $rows["descricao"]; ?></div>
                <hr>
                <div class="descricao"><strike>R$ <?php echo $rows["preco"]; ?></strike></div>
                <div class="preco">R$ <?php echo $rows["preco_final"]; ?></div>
            </div> 

        <?php            
                }    
            } else {
                echo "Nenhum produto encontrado!";
            }

        ?>
            
        </div>
        
    <footer id="rodape">
        <p>Formas de pagamentos</p>
        <img src="./imagem/pagamento.jpg" alt="Formas de pagamentos" />
        <p>&copy; Recode Pro.</p>
    </footer>
</div>        



</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script> -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> -->

</body>

</html>