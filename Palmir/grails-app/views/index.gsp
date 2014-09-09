<!DOCTYPE html>

<html>
	
    <head>
    <meta name="layout" content="main"/>
        <title>Palmiresiduos - Zona de Trabalho</title>
        
        
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
            <div id="splash"><span>Por favor escolha uma opção de trabalho</span></div>
            <!-- CRIAR CARD -->
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
                    <g:link controller="classificacaoResiduo" action="create" class="subMenuButton" id="criarCatResiduos">CLASSIFICAÇÃO RESIDUOS</g:link>
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
            
            <!-- CONSULTAR CARD -->
            <div class="pop" id="consultarCard">
                <div class="col">
                 	<span class="viaturasIco"></span>
                    <a class="subMenuButton" id="consultarViaturas" href="#">VIATURAS</a>
                    <span class="utilizadoresIco"></span>
                    <a class="subMenuButton" id="consultarUtilizadores" href="#">UTILIZADORES</a>
                    <span class="transportadoresIco"></span>
                    <a class="subMenuButton" id="consultarTransportadores" href="#">TRANSPORTADORES</a>
                </div>
                <div class="col">
                <span class="servicosIco"></span>
                    <a class="subMenuButton" id="consultarServicos" href="#">SERVIÇOS</a>
                    <span class="residuosIco"></span>
                    <a class="subMenuButton" id="consultarResiduos" href="#">RESIDUOS</a>
                    <span class="catResiduosIco"></span>
                    <g:link controller="classificacaoResiduo" action="show" class="subMenuButton" id="consultarCatResiduos">CLASSIFICAÇÃO RESIDUOS</g:link>
                   
                </div>
                <div class="col">
                	<span class="entidadesIco"></span>
                    <a class="subMenuButton" id="consultarEntidades" href="#">ENTIDADES</a>
                    <span class="garIco"></span>
                    <a class="subMenuButton" id="consultarGar" href="#">GAR</a>
                     <span class="garCdIco"></span>
                    <a class="subMenuButton" id="consultarGarCd" href="#">GAR CD</a>
                </div>
            </div>
            
            <!-- EDITAR CARD -->
            <div class="pop" id="editarCard">
                <div class="col">
                	<span class="viaturasIco"></span>
                    <a class="subMenuButton" id="editarViaturas" href="#">VIATURAS</a>
                    <span class="utilizadoresIco"></span>
                    <a class="subMenuButton" id="editarUtilizadores" href="#">UTILIZADORES</a>
                    <span class="transportadoresIco"></span>
                    <a class="subMenuButton" id="editarTransportadores" href="#">TRANSPORTADORES</a>
                </div>
                <div class="col">
                	<span class="servicosIco"></span>
                    <a class="subMenuButton" id="editarServicos" href="#">SERVIÇOS</a>
                    <span class="residuosIco"></span>
                    <a class="subMenuButton" id="editarResiduos" href="#">RESIDUOS</a>
                    <span class="catResiduosIco"></span>
                    <!-- <a class="subMenuButton" id="editarCatResiduos" href="#">CLASSIFICAÇÃO RESIDUOS</a>  -->
                    <g:link controller="classificacaoResiduo" action="edit" class="subMenuButton" id="editarCatResiduos">CLASSIFICAÇÃO RESIDUOS</g:link>
                </div>
                <div class="col">
                	<span class="entidadesIco"></span>
                    <a class="subMenuButton" id="editarEntidades" href="#">ENTIDADES</a>
                    <span class="garIco"></span>
                    <a class="subMenuButton" id="editarGar" href="#">GAR</a>
                     <span class="garCdIco"></span>
                    <a class="subMenuButton" id="editarGarCd" href="#">GAR CD</a>
                </div>
            </div>
        </div>
        
        
    </body>
</html>
