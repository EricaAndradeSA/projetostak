
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Banco de dados</title>
</head>
<body>
    

<?php
    $link = mysqli_connect("localhost", "root", "", "fseletro");
 
    if (!$link)
        die ("Falha na conexão com o BD " . mysqli_connect_errno());
    else
        echo "Sucesso: Sucesso ao conectar-se com a base de dados MySQL.";
    

    //COMANDO PARA INSERIR NOVOS PEDIDOS//
    $insere = "Insert into pedidos (idpedidos, nome_cliente, endereço, telefone, nome_produto, valor_unitario, quantidade, valor_total)
    Values ('11', 'Mario Loureiro', 'Avenida Paulista, 12345', 32120987, 'microondas', 1000.00, 1 , 800.00)";
    mysqli_query ($link, $insere);

    //COMANDO PARA DELETAR PEDIDOS//
    $del = "delete from pedidos where idpedidos = '8'";
    mysqli_query ($link, $del);

    //COMANDO PARA CONSULTA//
    $sql = "select nome_cliente, telefone, nome_produto from pedidos";
    $result = $link->query($sql);

    while($row = $result->fetch_assoc()){
        echo "<p> O cliente: " .$row['nome_cliente']." do telefone ".$row['telefone']. " comprou o produto : ".$row['nome_produto']."</p><hr>";
    }

    mysqli_close($link);
    ?>

</body>
</html>