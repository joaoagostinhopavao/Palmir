<!DOCTYPE html>

<html>
	
    <head>
    <meta name="layout" content="main"/>
        <title>CSS Framework - Containers</title>
        
        
    </head>
    <body>
 

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
                    <a class="subMenuButton" id="criarServicos" href="#">SERVIÇOS</a>
                    <span class="residuosIco"></span>
                    <a class="subMenuButton" id="criarResiduos" href="#">RESÍDUOS</a>
                    <span class="catResiduosIco"></span>
                    <g:link controller="classificacaoResiduo" action="create" class="subMenuButton" id="criarCatResiduos">CATEGORIA RESIDUOS</g:link>
                    <!--  <a class="subMenuButton" id="criarCatResiduos" href="#">CATEGORIA RESIDUOS</a>-->
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
