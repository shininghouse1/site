<?php 
  include "anterior.php";
?>
<h3 class="text-center mt-3">Veja alguns dos nossos serviços</h3>
<div class="row">
  <?php
    include "banco.php";
    $query = "select * from produto order by rand() limit 3";
    $exec = mysqli_query($con, $query);
    while($p = mysqli_fetch_array($exec)){
      $titulo = $p['titulo'];
      $iproduto = $p['idproduto'];
      $preco = $p['preco'];
      $preco = number_format($preco, 2,',','.');
      $imagem = $p['imagem'];
      $descricao = $p['descricao'];
      $descricao = substr($descricao,0,50);
      echo "
       <div class='col-xs-12 col-md-6 col-lg-4 mt-3'>
           <div class='card'>
               <div class='card-header bg-primary text-white'>
               <h4>$titulo</h4>
           </div>
           <div class='card-body'>
               <img src='produtos/$imagem' style='width:100%' />
               <p>R$ $preco </p>
               <p>$descricao...</p>
           </div>
           <div class='card-footer'>
               <a href='produto.php?id=$iproduto' class='btn btn-outline-primary'>
               Saiba mais
               </a>
            </div> 
          </div>
       </div>
      ";
    }
    $query = "select * from comments order by rand() limit 3";
    $exec = mysqli_query($con, $query);
    while($p = mysqli_fetch_array($exec)){
      $nome = $p['nome'];
      $email = $p['email'];
      $data = $p['data'];
      $comentario = $p['comentario'];
      echo "   
       <div class='col-xs-12 col-md-3 col-lg-4 mt-3'>
           <div class='card-footer'>
                <p><strong>-Data de envio: </strong> $data</p>
                <p><strong>-Nome: </strong> $nome</p>
                <p><strong>-Email: </strong> $email </p>
                <p><strong>-Comentário: </strong>$comentario</p>
           </div>
       </div>
      ";
    }
  ?>
</php>
<?php 
  include "posterior.php";
?>
<style>
.borda {
  background-color: #f2f2f2;
  border: 1px solid black;
  border-radius: 5px;
}
</style>