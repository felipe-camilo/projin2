<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Sacramento&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Lobster&family=Sacramento&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap');
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>La�os toda Linda</title>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/flexslider.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider.js"></script>


</head>

<body>
    <div class="container">
        <header class="topo">
            <div class="row justify-content-md-center text-center">
                <div class="col-md-12">
                    <div class="texto-logo">
                        La�os toda Linda
                        <img class="logo" src="img/laco.png">
                    </div>
                </div>
            </div>
        </header>
        <!-- menu superior -->

        <section class="menu-superior">
            <div class="row justify-content-md-center text-center">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <ul class="nav nav-pills nav-justified nav-menu-superior">
                        <li class="nav-item">
                            <a class="nav-link texto-categoria" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link texto-categoria" href="quem_somos.jsp">Quem somos</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link texto-categoria" href="contato.jsp">Contatos</a>
                        </li>
                          <li class="nav-item">
                            <a class="nav-link texto-categoria" href="admin.jsp">Admin</a>
                        </li>
                    </ul>
                </div>

            </div>
        </section>

        <section>
            <div class="row">
                <div class="col-md-12 text-align-center">
                    <div class="col-md-2 menu-lateral">
                         <ul class="menu-lateral-lista">
                            <li class="menu-lateral-categoria"><a href="index.jsp?pesquisa=La�os">La�os</a></li>
                            <li class="">Luxo</li>
                            <li class="">Tem�tico</li>
                            <li class="">Diversos</li>
                            <li class="menu-lateral-categoria"><a href="index.jsp?pesquisa=Arcos">Arcos</a></li>
                            <li class="">Luxo</li>
                            <li class="">Tem�tico</li>
                            <li class="">Diversos</li>
                            <li class="menu-lateral-categoria"><a href="index.jsp?pesquisa=Fantoches">Fantoches</a></li>
                            <li class="">Luxo</li>
                            <li class="">Tem�tico</li>
                            <li class="">Diversos</li>
                            <li class="menu-lateral-categoria"><a href="index.jsp?pesquisa=Diversos">Diversos</a></li>
                            <li class="">Luxo</li>
                            <li class="">Tem�tico</li>
                            <li class="">Diversos</li>
                        </ul>
                    </div>
                    <div class="col-md-10 conteudo">
                        <figure>
                            <img class="img-fluid mx-auto" src="img/default.jpg" />
                        </figure>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <article class="texto-categoria-divisao">
                                <br>Contato
                            </article>
                            
                            <form action="/action_page.php">
                                <div class="col-md-2"></div>
                                <div class="col-md-8">
                                <div class="form-group">
                                    <label for="email" class="texto-categoria">Email:</label>
                                    <input type="email" class="form-control" id="email">
                                  </div>
                                  <div class="form-group">
                                    <label for="cidade" class="texto-categoria">Cidade:</label>
                                    <input type="text" class="form-control" id="cidade">
                                  </div>
                                  <button type="submit" class="texto-categoria">Enviar</button>
                                </form>
                            </div>
                                <div class="col-md-2"></div>
                        </div>
                    </div>

                </div>
            </div>
            <div>

        </section>
    </div>

    <script type="text/javascript">
        //Flexlider

        $(window).load(function () {
            $('.flexslider').flexslider({ // A classe .flexslider é a classe que aparece no html
                animation: "slide", // Forma de animação
                easing: "swing",
                animationLoop: true, // Loop infinito do slide, se não quiser seta como false
                itemWidth: 900, // Largura da imagem, caso queira o slide full, remova essa linha
                itemMargin: 32, // Margem da imagem, caso não queira espaçamento das colunas remova essa linha
                slideshowSpeed: 5000, // Velocidade da transição em milésimo de segundos
                touch: true, // Ativa a função de touch em dispositivos móveis
                keyboard: true // Navegação pelo teclado
            });
        });

    </script>

</body>

</html>