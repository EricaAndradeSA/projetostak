
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
    <script src="index.js"></script>

</head>

<body>

    <!-- Menu -->
    <?php
    include_once('menu.html');
    ?>
    <!-- Menu -->

        <header>
            <h1>Produtos</h1>
        </header>
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

            <div class="box_produtos" style="display:inline-block;" id="<?php echo $rows["categoria"]; ?>">     
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
</body>

</html>