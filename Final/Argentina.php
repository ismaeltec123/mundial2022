<?php
    include("conDatabase.php");
    $sql="SELECT * FROM jugador where pais_idPais=9";
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
  background-color: skyblue;
}


</style>
<body>
  
  <nav class="content-nav">
    <figure class="content-img" style="background-color:steelblue;">
      <a href="Pagina principal.html">
        <img loading="lazy" src="http://multiculturalkidblogs.com/wp-content/uploads/2015/04/Flag_of_Argentina.png" class="img-fluid" style="width: 200px;">
      </a>
    <div class="col-"></figure class="content-img"></div>
    
    
    <div class="container text-center">
    <img src="https://media.tycsports.com/files/2019/07/06/61214/argentina.jpg" style="width: 500px;">
      <div class="container">
        <div class="row">
            <div class="col m-auto">
                <div class="card mt-5">
                    <table class="table table-bordered">
                        <tr>
                            <td> Player ID </td>
                            <td> nombre </td>
                            <td> Apellido </td>
                            <td> Posicion </td>
                    
                        </tr>

                        <?php 
                                
                                while($row=mysqli_fetch_assoc($result))
                                {
                                    $playerId = $row['player_id'];
                                    $name = $row['nombre'];
                                    $apellido = $row['apellido'];
                                    $idposicion = $row['posicion_idposicion'];
                        ?>
                                <tr>
                                    <td><?php echo $playerId ?></td>
                                    <td><?php echo $name ?></td>
                                    <td><?php echo $apellido ?></td>
                                    <td><?php echo $idposicion ?></td>
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