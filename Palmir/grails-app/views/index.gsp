<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		
        
        <h2>Palmiresiduos</h2>
        <div id="menu">
            <div id="palmiToolbarWrapper">
                <div id="palmiToolbar">
                    <a class="palmiCriar" href="#"></a>
                    <a class="palmiConsultar" href="#"></a>
                    <a class="palmiEditar" href="#"></a>
                </div>
            </div>
            <div class="pop" id="criarCard">
                <div class="col">
                    <span class="viaturasIco"></span>
                    <a class="subMenuButton" id="criarViaturas" href="#">VIATURAS</a>
                    <span class="utilizadoresIco"></span>
                    <a class="subMenuButton" id="criarUtilizadores" href="#">UTILIZADORES</a>
                    <span class="transportadoresIco"></span>
                    <a class="subMenuButton" id="criarTransportadores" href="#">TRANSPORTADORES</a>
                </div>
                <div class="col">
                    <span class="servicosIco"></span>
                    <a class="subMenuButton" id="criarServicos" href="#">SERVI��OS</a>
                    <span class="residuosIco"></span>
                    <a class="subMenuButton" id="criarResiduos" href="#">RES��DUOS</a>
                    <span class="catResiduosIco"></span>
                    <a class="subMenuButton" id="criarCatResiduos" href="#">CATEGORIA RESIDUOS</a>
                </div>
                <div class="col">
                    <span class="entidadesIco"></span>
                    <a class="subMenuButton" id="criarEntidades" href="#">ENTIDADES</a>
                    <span class="garIco"></span>
                    <a class="subMenuButton" id="criarGar" href="#">GAR</a>
                    <span class="garCdIco"></span>
                    <a class="subMenuButton" id="criarGarCd" href="#">GAR CD</a>
                </div>
            </div>
            <div class="pop" id="consultarCard">
                <div class="col">
                    <a class="subMenuButton" id="consultarViaturas" href="#"></a>
                    <a class="subMenuButton" id="consultarUtilizadores" href="#"></a>
                    <a class="subMenuButton" id="consultarTransportadores" href="#"></a>
                </div>
                <div class="col">
                    <a class="subMenuButton" id="consultarServicos" href="#"></a>
                    <a class="subMenuButton" id="consultarResiduos" href="#"></a>
                    <a class="subMenuButton" id="consultarCatResiduos" href="#"></a>
                </div>
                <div class="col">
                    <a class="subMenuButton" id="consultarEntidades" href="#"></a>
                    <a class="subMenuButton" id="consultarGar" href="#"></a>
                    <a class="subMenuButton" id="consultarGarCd" href="#"></a>
                </div>
            </div>
            <div class="pop" id="editarCard">
                <div class="col">
                    <a class="subMenuButton" id="editarViaturas" href="#"></a>
                    <a class="subMenuButton" id="editarUtilizadores" href="#"></a>
                    <a class="subMenuButton" id="editarTransportadores" href="#"></a>
                </div>
                <div class="col">
                    <a class="subMenuButton" id="editarServicos" href="#"></a>
                    <a class="subMenuButton" id="editarResiduos" href="#"></a>
                    <a class="subMenuButton" id="editarCatResiduos" href="#"></a>
                </div>
                <div class="col">
                    <a class="subMenuButton" id="editarEntidades" href="#"></a>
                    <a class="subMenuButton" id="editarGar" href="#"></a>
                    <a class="subMenuButton" id="editarGarCd" href="#"></a>
                </div>
            </div>
        </div>
        
		
		
		
		
		
	</body>
</html>
