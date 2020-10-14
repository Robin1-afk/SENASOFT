<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Facturcol</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet"> 
  <link href="css/estilo.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
         <div class="navbar-header">
           <a class="navbar-brand" href="#">Facturcol</a>
         </div>
          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

              <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Iniciar Sesion</span>
                <img class="img-profile rounded-circle" src="https://www.xovi.com/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown" style="width: 270px">
                <div class="container">
                    <form class="form-horizontal" action="empresa.php">
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Email:</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Contraseña:</label>
                        <div class="col-sm-10">          
                          <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                        </div>
                      </div>
                      <div class="form-group">        
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-success form-control">Entrar</button><br>
                          <a href="">¿Has olvidado tu contraseña?</a>
                        </div>
                      </div>
                    </form>
                  </div>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid" >

             <div class="col-xl-5 col-md-8 mb-4 ">
              <div class="card border-left-primary shadow h-100 py-2" style="margin-top: 40px">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    
                      <div class="container" id="container">
                          <h2 align="text-center">Registrate Empresa</h2>
                          <form class="form-horizontal" action="" >
                            <div class="form-group">
                              
                              <div class="col-sm-10">
                                <input type="number" class="form-control" id="Nit" placeholder=" Nit" name="Nit">
                              </div>
                            </div>
                            <div class="form-group">
                              
                              <div class="col-sm-10">
                                <input type="text" class="form-control" id="nombre" placeholder="nombre de empresa" name="nombre">
                              </div>
                            </div>
                            <div class="form-group">
                              
                              <div class="col-sm-10">
                                <input type="email" class="form-control" id="email" placeholder="Email" name="email">
                              </div>
                            </div>
                            <div class="form-group">
                              
                              <div class="col-sm-10">          
                                <input type="password" class="form-control" id="pwd" placeholder="Contaseña" name="contraseña">
                              </div>
                            </div>
                            <div class="form-group">
                              
                              <div class="col-sm-10">          
                                <input type="text" class="form-control" id="pwd" placeholder="telefono" name="telefono">
                              </div>
                            </div>
                            <div class="form-group">        
                              <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-success form-control">Registar</button><br>
                                <p align="center"><strong>Tu inventario seguro</strong></p>
                              </div>
                            </div>
                          </form>
                        
                    </div>
                  </div>
                </div>
              </div>
            </div>  
       

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Facturcol</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>
