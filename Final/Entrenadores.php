<?php
    include("conDatabase.php");
    $sql="SELECT * FROM entrenador ";
    $result= mysqli_query($conn, $sql);

    
?>

<DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Argentina</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    
</head>

<style>
body {
  background-color: grey;
}


</style>

<body>
  <nav class="content-nav">
    <figure class="content-img" style="background-color:steelblue;">
      <a href="Pagina principal.html">
        <img loading="lazy" src="https://www.fm899.com.ar/public/images/noticias/57394-extienden-las-inscripciones-para-el-curso-de-dt-de-futbol.jpg" class="img-fluid" style="width: 200px;">
      </a>
    <div class="col-"></figure class="content-img"></div>
   
    
    <div class="container text-center">
    <img src="https://www.marketingregistrado.com/img/noticias/mejores-entrenadores.png" style="width: 500px;">
      <div class="container">
        <div class="row">
            <div class="col m-auto">
                <div class="card mt-5">
                    <table class="table table-bordered">
                        <tr>
                            <td> IdEntrenador </td>
                            <td> nombre </td>
                            <td> Apellido </td>
                            <td> idPais </td>
                    
                        </tr>

                        <?php 
                                
                                while($row=mysqli_fetch_assoc($result))
                                {
                                    $entrenadorId = $row['idEntrenador'];
                                    $name = $row['nombre'];
                                    $apellido = $row['apellido'];
                                    $idpais = $row['pais_idPais'];
                        ?>
                                <tr>
                                    <td><?php echo $entrenadorId ?></td>
                                    <td><?php echo $name ?></td>
                                    <td><?php echo $apellido ?></td>
                                    <td><?php echo $idpais ?></td>
                                </tr>        
                        <?php 
                                }  
                        ?>                                                                    
                               

                    </table>
                </div>
            </div>
        </div>
    </div>
    </div>
  </nav>
</html>