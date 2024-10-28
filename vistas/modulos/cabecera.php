    
  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>


    <!-- barra de navegacion-->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- perfil del usuario--->
            <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                      <!-- Messages: style can be found in dropdown.less-->
                      <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                          
                          <?php 
                            if ($_SESSION["foto"]!= "") {
                              echo '<img src="'.$_SESSION["foto"].'" class="user-image">';
                            }else{
                              echo '<img src="vistas/usuarios/default/base.jpg" class="user-image">';
                            }
                           ?>
                           <span class="hidden-xs"> <?php echo $_SESSION["nombre"]; ?></span>
                        </a>


                            <ul class="dropdown-menu">
                              <li class="user-body">
                                <div class="pull-right">
                                  <a href="salir" class="btn btn-default btn-flat">Cerrar</a>
                                </div>
                                
                              </li>  
                            </ul>
                      </li>
                    </ul>
            </div>
    </nav>
  </header>
