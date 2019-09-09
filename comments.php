<?php 
	include "anterior.php";
?>
<h1>Deixe o seu comentário!</h1>
<form action="comments2.php" method="post" enctype="multipart/form-data">
    <div class="form-group">
		<label for="nome">Digite o seu nome</label>
		<input type="text" required name="nome" id="nome" class="form-control" />
	</div>
    <div class="form-group">
		<label for="email">Digite o seu email</label>
		<input type="text" required name="email" id="email" class="form-control" />
	</div>
    <div class="form-group">
        <label for="comentario">Deixe o seu comentário</label>
        <input type="text" required name="comentario" id="comentario" class="form-control" />
  </div>
  <button type="submit" class="btn btn-primary">Enviar comentário</button>
</form>
	
<?php 
	include "posterior.php";
?>