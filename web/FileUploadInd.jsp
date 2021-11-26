<%-- 
    Document   : FileUploadInd
    Created on : 24 nov. 2021, 12:56:59
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Dossier à Télécharger</title>
        
        <!--<script>
            /* Cette fonction permet d'afficher une vignette pour chaque image sélectionnée */
          function readFilesAndDisplayPreview(files) {
                let imageList = document.querySelector('#list'); 
                imageList.innerHTML = "";
                
                for ( let file of files ) {
                    let reader = new FileReader();
                    
                    reader.addEventListener( "load", function( event ) {
                        let span = document.createElement('span');
                        span.innerHTML = '<img height="60" src="' + event.target.result + '" />';
                        imageList.appendChild( span );
                    });

                    reader.readAsDataURL( file );
                }
            }
        </script> -->
    </head>
    <body style="text-align: center">
        
        <header>
            <h1>Veuillez choisir les fichiers à télécharger .</h1>
        </header>
        
        <form method="post" action="FileUploadServInd" enctype="multipart/form-data">
           AJOUTER LE DOSSIER DU DEMANDEUR
            <input type="file" name="multiPartServlet"  multiple onchange="readFilesAndDisplayPreview(this.files);" /> <br/><br/>
            <input type="submit" value="INSERER" /> <br/>        
            
            <div id="list"></div>   
        </form>
    </body>
</html>