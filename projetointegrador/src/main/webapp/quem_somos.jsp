<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
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
                    </ul>
                </div>

            </div>
        </section>

        <section>
            <div class="row">
                <div class="col-md-12 text-align-center">
                    <div class="col-md-2 menu-lateral">
                        <ul class="menu-lateral-lista">
                            <li class="menu-lateral-categoria">La�os</li>
                            <li class="">Luxo</li>
                            <li class="">Tem�tico</li>
                            <li class="">Diversos</li>
                            <li class="menu-lateral-categoria">Fantoches</li>
                            <li class="">Luxo</li>
                            <li class="">Tem�tico</li>
                            <li class="">Diversos</li>
                            <li class="menu-lateral-categoria">Arcos</li>
                            <li class="">Luxo</li>
                            <li class="">Tem�tico</li>
                            <li class="">Diversos</li>
                            <li class="menu-lateral-categoria">Diversos</li>
                            <li class="">Luxo</li>
                            <li class="">Tem�tico</li>
                            <li class="">Diversos</li>
                        </ul>
                    </div>
                    <div class="col-md-10 conteudo">
                        <figure>
                            <img class="img-fluid mx-auto" src="img/imagem_grande.jpg" />
                        </figure>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <article class="texto-categoria-divisao">
                                <br>Quem somos
                            </article>
                            <p>
                                <br>Cuidados clínicos para aprovação. Vira uma bebida e um bate papo graduado. Para
                                alguns objetivos. O futebol sed foi um investimento feio no futebol. Bate-papo
                                de chocolate quente feio. Presente e maquiagem, que de nenhum facilisis feugiat,
                                sem sapien lacinia metus, eu placerat mauris ex, que a tristeza. Phasellus
                                pulvinar sapien bibendum erat volutpat, companhia aérea velit dignissim blandit.
                                Mas os desenvolvedores, como a televisão gratuita de basquete. Presente variado
                                como sendo o bloqueio do fluxo principal.

                                Nulla ipsum lacus, fermentum sagittis laoreet vitae, porttitor uma bola de
                                futebol. Salada de tomate de futebol ao vivo antes da grelha, coloque o ciclo de
                                vida da maconha. Sed ultricies pot cenouras membros do teclado, o leão sem
                                aljava, non porta felis Mauris zero. Futebol, basquete, futebol, piscinas,
                                Bureau, show. Mas mesmo se formou ainda, mas a região em qualquer tanque autor.
                                Lorem agora é ótimo futebol. Financiamento de nutrição imobiliária, amendoim ou
                                vazamento de gás. Nem uma colher de molho, antioxidantes Mauris, lorem grelhado.
                                Apresente fotografia no quintal e nos veículos. Não há um sorriso de
                                conveniência ou uma surra.

                                Pois, como o tortor eleifend, a atração da vida, laoreet felis. Nulla. Por medo
                                ou estresse, beba emocionante, mas às vezes a corrida ao ar livre. Por favor,
                                retransmita cuidado às vezes. Enéias agora o Federal Reserve, futebol e
                                financiamento, geladeira televisão. Presente, do qual mencionamos qualquer arco,
                                nem um interdum urna. A maior manufatura é sempre zero às vezes. Cada um de
                                desenvolvedor de luto e futebol tincidunt ecológico. Natoque como é fácil a dor
                                do luto pelo molho. Às vezes eles machucam a fome e ao primeiro gosto. Por
                                emissões de carbono de direitos autorais dos maiores. Quem pode conversar com
                                maquiagem, camada de cenouras início dedutível reservado. Mas um soft varius
                                arcu, vitae mattis leo velit condimentum nec.
                            </p>
                            </article>
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