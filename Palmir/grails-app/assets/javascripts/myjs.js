/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function($){
    
    // Esconder divs pop do menu
    
    $(".pop").hide();
    
    
   $(".ui-widget a").hover(function(){
       $(this).parent().addClass("ui-state-hover");
   },function() {
       $(this).parent().removeClass("ui-state-hover");
   }); 
   
    //Botoes
   $("#buttonPalmi").button({
      text:false,
      icons:{
          primary:"ui-icon-custom"
      }
   });
   
   // Botoes ancora
   $("#criar").button().click(function(){
      
      event.preventDefault();
   });
   
   $(".palmiCriar").hover(function(){
       $(this).removeClass("palmiCriarEnable");
       $(this).toggleClass("palmiCriarHover",10,"easeOutSine");
   }); 
   
   $(".palmiCriar").click(function(){
       event.preventDefault();
       $(this).toggleClass("palmiCriarEnable",10,"easeOutSine");
       $(".pop").hide();
    
       $("#criarCard").show();
   });
   
   $(".palmiConsultar").hover(function(){
       $(this).removeClass("palmiConsultarEnable");
       $(this).toggleClass("palmiConsultarHover",10,"easeOutSine");
   }); 
   
   $(".palmiConsultar").click(function(){
       event.preventDefault();
       $(this).toggleClass("palmiConsultarEnable",10,"easeOutSine");
       $(".pop").hide();
       $("#consultarCard").show();
       
   });
   
   $(".palmiEditar").hover(function(){
       $(this).removeClass("palmiEditarEnable");
       $(this).toggleClass("palmiEditarHover",10,"easeOutSine");
   }); 
   
   $(".palmiEditar").click(function(){
       event.preventDefault();
       $(this).toggleClass("palmiEditarEnable",10,"easeOutSine");
       $(".pop").hide();
       $("#editarCard").show();
       
   });
   
   // Fim dos botoes da Toolbar
   
   
   
   $("#palmiToolbar").children().css({
       "display":"block",
       "float":"left",
       "margin":"11px 0px",
       "padding":"5px 40px",
      
       "background-repeat":"no-repeat"
       
    }
   );
   
   $(".pop").children().css({
       "float":"left",
       //"border":"1px solid green",
       "width":"220px",
       "height":"171px",
       "padding":"20px 0 0 5px"
   });
   
   
   
   
   //Acionar os tabs
   $("#myTabs").tabs();
   
   
   //Adicionar tabs. A partir da versão 11 não existem os metodos add e remove(nem outros)
   $( "<li><a href='#d'>New Tab (Auto:jQuery)</a></li>" ).appendTo( "#myTabs .ui-tabs-nav" );
   $("<div id='d'> Conteudo do 4. Foi gerado no jQuery</div>").appendTo("#myTabs");
   
   // No final da manipulação fazer o refresh
   $( "#myTabs" ).tabs( "refresh" );
   
});

