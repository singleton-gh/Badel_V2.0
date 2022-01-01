<%-- 
    Document   : FileUploadIndiv
    Created on : 3 déc. 2021, 23:43:49
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add PJ</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <b>AJOUTER LE DOSSIER :</b><br/><br/>
        <img src="http://localhost/phpmyadmin/tbl_get_field.php?db=badel&table=data&where_clause=%60data%60.%60id%60+%3D+3&transform_key=image&sql_query=SELECT+%2A+FROM+%60data%60"/>
        <form action="uploadImage" method="post" enctype="multipart/form-data">
            <input type="file" name="image" required="required"/><br/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
