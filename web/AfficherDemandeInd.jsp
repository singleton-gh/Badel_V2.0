<%-- 
    Document   : AfficherDemandeInd
    Created on : 1 janv. 2020, 00:10:09
    Author     : singleton
--%>

<%@page import="dao.dataAccess"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="dbutil.JavaConnect"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!doctype html>

<html class="no-js" lang="">


    <head>
        <meta charset="ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Afficher les Demandes Individuelles </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="favicon.ico">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/transitions.css">
        <link rel="stylesheet" href="css/prettyPhoto.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/pogoslider.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/color.css">
        <link rel="stylesheet" href="css/responsive.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            table {
                border-collapse: collapse;
                border-spacing: 0;
                width: 100%;
                border: 1px solid #ddd;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even){background-color: #f2f2f2}
        </style>
    </head>

    <body>
        <%
            String formulaire_id = (String) request.getAttribute("formulaire_id");

            String ix = request.getParameter("id");
            String idx = (String) request.getAttribute("id");
            String tpe = (String) request.getAttribute("tpe");
            if (idx == null) {
                idx = ix;
            }
            //ix = "1";
            String sql = "SELECT * FROM loginadmin where Id=?";
            Connection con = new JavaConnect().createConnection();
            PreparedStatement pst, pst1;
            try {

                // String idx = "0";
                pst = con.prepareStatement(sql);
                pst.setString(1, ix);
                ResultSet rs = pst.executeQuery();

                while (rs.next()) {
                    System.out.println("hello 4");
                    String id = rs.getString(1);
                    String Prenom = rs.getString(2);
                    String nom = rs.getString(3);
                    String Civilite = rs.getString(4);
                    int Role = rs.getInt(11);
        %>    <!--************************************
                            Loader Start
            *************************************-->
        <div class="lds-roller">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
        <!--************************************
                            Loader End
            *************************************-->
        <!--************************************
                            Wrapper Start
            *************************************-->
        <div id="at-wrapper" class="at-wrapper">
            <!--************************************
                                    Header Start
                    *************************************-->
           <header id="at-header" class="at-header at-headervthree">
                <div class="container-fluid">
                    <div class="row">
                        <strong class="at-logo"><a href="index.html"><img src="images/logo2.png" alt="company logo here"><span class="at-contactnumber"> <i class="icon-telephone114"></i> <em>+00221 33 837 80 09</em> </span></a></strong>
                                      
                        <div class="at-navigationarea">
                            <nav id="at-nav" class="at-nav">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#at-navigation" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                               <div id="at-navigation" class="collapse navbar-collapse at-navigation">
                                    <ul>
                                        <li class="menu-item-has-children">
                                            <a href="Principal.jsp?id=<%=ix%>" ><em><strong>MENU PRINCIPAL</strong></em></a>
                                        </li>
                                       
                                    </ul>
                                </div>
                            </nav>
                          <!--   <div class="at-contactsocial">
                                <span class="at-contactnumber">
                                    <i class="icon-telephone114"></i>
                                    <em>+00221 33 837 80 09</em>
                                </span> 
                              <ul class="at-socialicons">
                                    <li class="at-facebook"><a href="https://www.facebook.com/badel"><i class="fa fa-facebook"></i></a></li>
                                    <li class="at-twitter"><a href="https://www.twitter.com/badel"><i class="fa fa-twitter"></i></a></li>
                                    <li class="at-instagram"><a href="https://www.youtube.com/badel"><i class="fa fa-youtube"></i></a></li>
                                </ul>
                             -->
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!--************************************
                                    Header End
                    *************************************-->
            <main id="at-main" class="at-main at-haslayout">

                <div class="clearfix"></div>
                <section class="at-sectionspace at-haslayout">
                    <div class="container">
                        <h1 style="text-align: center;">Liste des Demandes Individuelles</h1>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="at-content">
                                    <h3>Rechercher par :</h3> <br/>
                                    <input id="myInput0" onkeyup="myFunction0()" placeholder="Id Formulaire"  type="text" name="" value="" />
                                   <input id="myInput" onkeyup="myFunction()" placeholder="Télephone1"  type="text" name="" value="" /> 
                                   <!--  <input id="myInput1" onkeyup="myFunction1()" placeholder="Prenom" type="text" name="" value="" />
                                    <input id="myInput2" onkeyup="myFunction2()" placeholder="Nom" type="text" name="" value="" /> -->

                                    <br/> <br/>
                                    <div class="at-contactusvone">
                                        <div style="overflow-x:auto;">
                                            <table id="myTable" >
                                                <thead>
                                                    <tr>
                                                        <th>Option</th>
                                                        <th>N°</th>
                                                      <!--  <th>Inscrit_Par</th> -->
                                                        <th>Id_Formulaire</th>
                                                        <th>Prenom</th>
                                                        <th>Nom</th>
                                                        <th>Téléphone_1</th>
                                                        <th>Téléphone_2</th>
                                                        <th>Commune_de_Rattachement</th>
                                                        <th>Quartier_de_Rattachement</th>
                                                        <th>Commune_Actuelle</th>
                                                        <th>Quartier_Actuel</th>
                                                        <th>Sexe</th>
                                                        <th>Tranche_d'Age</th>
                                                        <th>Etude</th>
                                                        <th>Niveau_d'Etude</th>
                                                        <th>Format._Professionnelle</th>
                                                        <th>Séjour</th>
                                                        <th>Pays_Séjourné</th>
                                                        <th>Motif_Séjour</th>
                                                        <th>Expér._Professionnelle</th>
                                                        <th>Domaine_Expér._Professionnelle</th>
                                                        <th>Durée_Expér._Professionnelle</th>
                                                        <th>Statut_Expér._Professionnelle</th>
                                                        <th>Région_Expér._Professionnelle</th>
                                                        <th>Départ._Expér._Professionnelle</th> 
                                                        <th>Commune_Expér._Professionnelle</th>
                                                        <th>Quartier_Expér._Professionnelle</th>
                                                        <th>Autre_Quart_Expér_Professionnelle</th>
                                                        <th>Extérieur</th>
                                                        <th>Situation_Professionnelle</th>
                                                        <th>Soutien_Immédiat</th>
                                                        <th>Titre_Accompagnement</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    
                                                       
                                                    
                                                    
                                                    <%
                                                       
                                                        try {
                                                  String sql1="";
                                                                 if(Role == 1){
                                                                  sql1 = "SELECT * FROM p1demandeurindividuel where supp = 0";
                                                               }else{
                                                                  sql1 = "SELECT * FROM p1demandeurindividuel where supp = 0 and inscritPar =" + idx;                                                            
                                                               }
                                                            // String idx = "0";
                                                            pst = con.prepareStatement(sql1);
                                                            ResultSet rs1 = pst.executeQuery();
                                                            int compte = 1;
                                                            while (rs1.next()) {
                                                    %>         
                                                    <tr>
                                                        <td><input style="background-color: #09b83e; color: white" type="button" value=" DETAILS" onclick="location.href = 'dossierComplet.jsp?idform=<%=rs1.getString(3)%>&type=ind&id=<%=ix%>'"/> </td>
                                                        <td><%=compte%> </td>
                                                        
                                                     <!--   <td><%=Prenom%>&nbsp;<%=nom%></td>
                                                 <td>User <%=rs1.getString(2)%></td> -->
                                                        <td><%=rs1.getString(3)%></td>
                                                        <td><%=rs1.getString(4)%></td>
                                                        <td><%=rs1.getString(5)%></td>
                                                        <td><%=rs1.getString(6)%></td>
                                                        <td><%=rs1.getString(7)%></td>
                                                        <td><%=rs1.getString(8)%></td>
                                                        <td><%=rs1.getString(9)%></td>
                                                        <td><%=rs1.getString(10)%></td>
                                                        <td><%=rs1.getString(11)%></td>
                                                        <td><%=rs1.getString(12)%></td>
                                                        <td><%=rs1.getString(13)%></td>
                                                        <td><%=rs1.getString(14)%></td>
                                                        <td><%=rs1.getString(15)%></td>
                                                        <td><%=rs1.getString(16)%></td>
                                                        <td><%=rs1.getString(17)%></td>
                                                        <td><%=rs1.getString(18)%></td>
                                                        <td><%=rs1.getString(19)%></td>
                                                        <td><%=rs1.getString(20)%></td>
                                                        <td><%=rs1.getString(21)%></td>
                                                        <td><%=rs1.getString(22)%></td>
                                                        <td><%=rs1.getString(23)%></td>
                                                        <td><%=rs1.getString(24)%></td>
                                                        <td><%=rs1.getString(25)%></td>
                                                        <td><%=rs1.getString(26)%></td>
                                                        <td><%=rs1.getString(27)%></td>
                                                        <td><%=rs1.getString(28)%></td>
                                                        <td><%=rs1.getString(29)%></td>
                                                        <td><%=rs1.getString(30)%></td>
                                                        <td><%=rs1.getString(31)%></td>
                                                        <td><%=rs1.getString(32)%></td>
                                                        <%
                                                                    compte++;
                                                                }
                                                            } catch (SQLException ex) {
                                                                System.out.println("Erreur recup ind1" + ex);
                                                            }

                                                        %>

                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            </section>
                            </main>

                            <!--************************************
                                                    Footer Start
                                    *************************************-->
              <footer id="at-footer" class="at-footer at-haslayout">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                         <!--   <div class="at-emailsubscribearea">
                                <p>Recevez nos dernières informations</p>
                                <form class="at-formtheme at-formnewsletter">
                                    <fieldset>
                                        <input type="email" name="email" class="form-control" placeholder="Votre adresse e-mail">
                                        <button class="at-btn" type="submit">Souscrire</button>
                                    </fieldset>
                                </form>
                            </div> -->
                         <!--   <div class="at-threecolumns">
                                <div class="at-fcolumn">
                                    <div class="at-widget at-widgetusefullinks">
                                        <div class="at-fwidgettitle">
                                            
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="at-fcolumn">
                                    <div class="at-widget">
                                        <div class="at-fwidgettitle">
                                            <h3>Recent News</h3>
                                        </div> 
                                        <div class="at-widgetcontent">
                                            <ul>
                                                <li>
                                                      <p>Product Design &amp; Branding Innovative Brand Design Concepts</p> 
                                                    <time datetime="2018-01-12">January 28, 2018</time>
                                                </li>
                                                <li>
                                                      <p>Product Design &amp; Branding Innovative Brand Design Concepts</p> 
                                                    <time datetime="2020-24-11">Novembre 24, 2020</time>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                          <div class="at-copyright">
                                <p>Adresse: ZAC MBAO villa N°3 4i&egrave;me Etage Cit&eacute; Socidak 1 en face Brioche Dor&eacute;e, Rufisque Ouvert de 09H &agrave; 17H</p>
                                <p>Copyright @ 2020. <p>Email: bara.wade@taataan.sn</p><a href="https://www.taataan.sn">ASADIC TAATAAN</a> All rights reserved.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
                            <!--************************************
                                                    Footer End
                                    *************************************-->
                            <%                                }
                            } catch (SQLException ex) {%>

                            <main id="at-main" class="at-main at-haslayout">

                                <div class="clearfix"></div>
                                <section class="at-sectionspace at-haslayout">
                                    <div class="container">
                                        <h1 style="text-align: center;">Erreur id Conect1</h1>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="at-content">
                                                    <div class="at-contactusvone">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </main>
                            <%
                                }
                                con.close();
                                System.out.println("Connection Closed");
                            %>
                        </div>
                        <!--************************************
                                            Wrapper End
                            *************************************-->
                        <script>

                            function myFunction0() {
                                var input, filter, table, tr, td, i;
                                input = document.getElementById("myInput0");
                                filter = input.value.toUpperCase();
                                table = document.getElementById("myTable");
                                tr = table.getElementsByTagName("tr");
                                for (i = 0; i < tr.length; i++) {
                                    td = tr[i].getElementsByTagName("td")[2];
                                    if (td) {
                                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                            tr[i].style.display = "";
                                        } else {
                                            tr[i].style.display = "none";
                                        }
                                    }
                                }
                            }
                             function myFunction() {
                                var input, filter, table, tr, td, i;
                                input = document.getElementById("myInput");
                                filter = input.value.toUpperCase();
                                table = document.getElementById("myTable");
                                tr = table.getElementsByTagName("tr");
                                for (i = 0; i < tr.length; i++) {
                                    td = tr[i].getElementsByTagName("td")[5];
                                    if (td) {
                                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                            tr[i].style.display = "";
                                        } else {
                                            tr[i].style.display = "none";
                                        }
                                    }
                                }
                            }
                            
                              function myFunction1() {
                                var input, filter, table, tr, td, i;
                                input = document.getElementById("myInput1");
                                filter = input.value.toUpperCase();
                                table = document.getElementById("myTable");
                                tr = table.getElementsByTagName("tr");
                                for (i = 0; i < tr.length; i++) {
                                    td = tr[i].getElementsByTagName("td")[4];
                                    if (td) {
                                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                            tr[i].style.display = "";
                                        } else {
                                            tr[i].style.display = "none";
                                        }
                                    }
                                }
                            }
                              function myFunction2() {
                                var input, filter, table, tr, td, i;
                                input = document.getElementById("myInput2");
                                filter = input.value.toUpperCase();
                                table = document.getElementById("myTable");
                                tr = table.getElementsByTagName("tr");
                                for (i = 0; i < tr.length; i++) {
                                    td = tr[i].getElementsByTagName("td")[5];
                                    if (td) {
                                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                            tr[i].style.display = "";
                                        } else {
                                            tr[i].style.display = "none";
                                        }
                                    }
                                }
                            }
                        </script>
                        <script src="js/vendor/jquery-library.js"></script>
                        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcvAXp35fi4q7HXm7vcG9JMtzQbMzjRe8"></script>
                        <script src="js/vendor/jquery-migrate.js"></script>
                        <script src="js/vendor/bootstrap.min.js"></script>
                        <script src="js/owl.carousel.min.js"></script>
                        <script src="js/Chart.bundle.min.js"></script>
                        <script src="js/isotope.pkgd.js"></script>
                        <script src="js/prettyPhoto.js"></script>
                        <script src="js/jquery.vide.js"></script>
                        <script src="js/pogoslider.js"></script>
                        <script src="js/countTo.js"></script>
                        <script src="js/appear.js"></script>
                        <script src="js/gmap3.js"></script>
                        <script src="js/function.js"></script>
                        </body>
                        </html>
