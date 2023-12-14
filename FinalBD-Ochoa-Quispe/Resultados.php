<?php
    include("conDatabase.php");
    $sql="SELECT * FROM partido
    INNER JOIN resultado_partido
    ON partido.idPartido = resultado_partido.Partido_idPartido";
    
    $result= mysqli_query($conn, $sql);

    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mundial Qatar 2022</title>
    <link rel="shortcut icon" href="logofinal.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" style="width: 30px ;height: 60px;" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="Pag principal.css">
    
</head>
<header>
  
<div>
  <nav id="navbar-example2" class="navbar bg-body-tertiary px-3 mb-3">
  <a class="navbar-brand" href="Pagina principal.html"><img src="logo2.jfif" alt="logo" width="205"></a><p id="total"></p>
  <ul class="nav nav-pills">
    <li class="nav-item">
      <a class="nav-link" href="Estadios.php">Estadios</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Equipos</a>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="A.html">GRUPO A</a></li>
        <li><a class="dropdown-item" href="B.html">GRUPO B</a></li>
        <li><a class="dropdown-item" href="C.html">GRUPO C</a></li>
        <li><a class="dropdown-item" href="D.html">GRUPO D</a></li>
        <li><a class="dropdown-item" href="E.html">GRUPO E</a></li>
        <li><a class="dropdown-item" href="F.html"> GRUPO F</a></li>
        <li><a class="dropdown-item" href="G.html">GRUPO G</a></li>
        <li><a class="dropdown-item" href="H.html">GRUPO H</a></li>
        <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="Equipos.html">TODOS LOS EQUIPOS</a></li>
       
      </ul>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Resultados.php">Estadisticas</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Entrenadores.php">Entrenadores</a>
    </li>

  
  </ul>
  </nav>
</div>
</header>

<body>
<br>
   
    
    <div class="container text-center">
    <img src="Estadisticas.webp" style="width: 500px;">
      <div class="container">
        <div class="row">
            <div class="col m-auto">
                <div class="card mt-5">
                    <table class="table table-bordered">
                        <tr>
                            
                            <td> Estadio </td>
                            <td> id Local </td>
                            <td> id Visitante </td>
                            <td> Gol Local </td>
                            <td> Gol Visitante </td>
                    
                        </tr>

                        <?php 
                                
                                while($row=mysqli_fetch_assoc($result))
                                {
                                    
                                    $nom_Estadio = $row['nom_Estadio'];
                                    $idLocal = $row['num_Local'];
                                    $idVisitante = $row['num_Visitante'];

                                    $golLocal = $row['gol_local'];
                                    $golVisitante = $row['gol_visitante'];
                        ?>
                                <tr>
                                    
                                    <td><?php echo $nom_Estadio ?></td>
                                    <td><?php echo $idLocal ?></td>
                                    <td><?php echo $idVisitante ?></td>
                                    <td><?php echo $golLocal ?></td>
                                    <td><?php echo $golVisitante ?></td>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
   </body>
</html>