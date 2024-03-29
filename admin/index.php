<?php
require 'lib/php/adm_liste_include.php';
$cnx = Connexion::getInstance($dsn, $user, $pass);
session_start();
?>
<html>
    <head>
        <link rel = "stylesheet" type = "text/css" href = "lib/css/bootstrap-4.0.0/dist/css/bootstrap.css"/>
        <link rel = "stylesheet" type = "text/css" href = "lib/css/style.css"/>
        <link rel = "stylesheet" type = "text/css" href = "../lib/css/pStyle.css"/>


      <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel = "stylesheet"
              id = "bootstrap-css">
        <script src = "//code.jquery.com/jquery-1.11.1.min.js"></script>

        <script src = "https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity = "sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin = "anonymous"></script>
        <script src = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
                integrity = "sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
        crossorigin = "anonymous"></script>
        <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
                integrity = "sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
        crossorigin = "anonymous"></script>

        <link href = "//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel = "stylesheet"
              id = "bootstrap-css">
        <script src = "//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src = "//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src = "//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>


        <meta charset = "UTF-8">
        <title>Administrateur</title>
    </head>
    <body>
        <div class = "wrapper">
            <header>
                <img src = "images/banVoyage2.jpg" alt = "baniere voyage"/>
            </header>
            <div class = "container-fluid">
                <div class = "row">
                    <div class = "col-sm-12">
                        <?php
                        if (file_exists('lib/php/menuAdmin.php')) {
                            include( 'lib/php/menuAdmin.php' );
                        }
                        ?>
                    </div>
                </div>
            </div>
            <div class = "container fond">
                <div class = "row">
                    <div class = "col-sm-11">
                        <?php if (isset($_SESSION['admin'])) {
                            ?>
                            <a href = "index.php?page=disconnect" class = "float-right btn btn-danger" type = "button">
                                D&eacute;connexion
                                <span class = "glyphicon glyphicon-log-out"></span>
                            </a>
                            <?php
                        }
                        ?>
                    </div>
                </div>
                <section>
                    <?php
                    /* le contenu change en fonction de la navigation */

                    if (!isset($_SESSION['admin'])) {
                        $_SESSION['page'] = "admin_login";
                    } else if (!isset($_SESSION['page'])) {
                        $_SESSION['page'] = "accueil_admin";
                    } else {

                        if (isset($_GET['page'])) {
                            //print $_GET['page'];
                            $_SESSION['page'] = $_GET['page'];
                        }
                    }
                    //}
                    $path = "./pages/" . $_SESSION['page'] . ".php";

                    //print $_SESSION['page'];
                    if (file_exists($path)) {
                        include $path;
                    } else {
                        print "ICI OUPS!!!!!";
                    }
                    ?>
                </section>
                <footer>
                    <?php
                    if (file_exists("../lib/php/footerPublic.php")) {
                        include( "../lib/php/footerPublic.php" );
                    }
                    ?>
                </footer>
            </div>
        </div>
    </div>
</div>
<script src = "lib/js/fonction_backToTop.js"></script>
</body>
</html>
