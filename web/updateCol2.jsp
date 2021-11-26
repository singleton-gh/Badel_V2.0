<%-- 
    Document   : updateCol2
    Created on : 29 oct. 2021, 17:25:23
    Author     : asus
--%>



<%-- 
    Document   : inscriptionCollective2
    Created on : 7 d?c. 2020, 02:58:53
    Author     : MSGB
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
    <title>Inscription Collective 2</title>
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
</head>

<body>
    <%
            String formulaire_idx = request.getParameter("formulaire_id");
            String formulaire_id = (String) request.getAttribute("formulaire_id");

            if (formulaire_id == null) {
                formulaire_id = formulaire_idx;
            }

            String ix = request.getParameter("id");
            String idx = (String) request.getAttribute("id");
            String tpe = (String) request.getAttribute("tpe");
            if (idx == null) {
                idx = ix;
            }
            String sql = "SELECT * FROM loginadmin where Id=?";
            try {
                Connection con = new JavaConnect().createConnection();
                PreparedStatement pst, pst1;

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
        %>
    <!--************************************
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
                    <strong class="at-logo"><a href="index.html"><img src="images/logo2.png" alt="company logo here"></a></strong>
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
                                        <a href="index.html">Accueil</a>
                                    </li>
                                        <li class="menu-item-has-children">
                                            <a href="Principal.jsp?id=<%=ix%>">Menu Admin</a>
                                        </li>
                                    <li class="menu-item-has-children">
                                        <a href="connection.html">Se d&eacute;cnnecter</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                        <div class="at-contactsocial">
                            <span class="at-contactnumber">
								<i class="icon-telephone114"></i>
								<em>+00221 33 837 80 09</em>
							</span>
                            
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!--************************************
				Header End
		*************************************-->
        <!--************************************
				Home Slider Start
		*************************************-->

        <!--************************************
				Home Slider End
		*************************************-->
        <!--************************************
				Main Start
		*************************************-->
          <%
                /* R�cup�ration des donn�es de p2demandCol*/
                //int compte1 = 1;
                String form2Con1 = "";
                String form2Con2 = "";
                String form2Con3 = "";
                String form2Con4 = "";
                String form2Con5 = "";
                String form2Con6 = "";
                String form2Con7 = "";
                String form2Con8 = "";
                String form2Con9 = "";
                String form2Con10 = "";
                String form2Con11 = "";
                String form2Con12 = "";
                String form2Con13 = "";
                String form2Con14 = "";
                String form2Con15 = "";
                String form2Con16 = "";
                String form2Con17 = "";
                String form2Con18 = "";
                String form2Con19 = "";
                String form2Con20 = "";
                String form2Con21 = "";
                String form2Con22 = "";
                String form2Con23 = "";
                String form2Con24 = "";
                String form2Con25 = "";
                String form2Con26 = "";
                String form2Con27 = "";
                String form2Con28 = "";
                String form2Con29 = "";
                String form2Con30 = "";
                String form2Con31 = "";
                String form2Con32 = "";
                String form2Con33 = "";

                try {

                    String sql1 = "SELECT * FROM `p2demandeurcollectif` WHERE `formulaire_id` LIKE '" + formulaire_id + "'";
                    // String idx = "0";
                    pst1 = con.prepareStatement(sql1);
                    ResultSet rs1 = pst1.executeQuery();

                    System.out.println("hey1");
                    while (rs1.next()) {

                        form2Con1 = rs1.getString(1);
                        form2Con2 = rs1.getString(2);
                        form2Con3 = rs1.getString(3);
                        form2Con4 = rs1.getString(4);
                        form2Con5 = rs1.getString(5);
                        form2Con6 = rs1.getString(6);
                        form2Con7 = rs1.getString(7);
                        form2Con8 = rs1.getString(8);
                        form2Con9 = rs1.getString(9);
                        form2Con10 = rs1.getString(10);
                        form2Con11 = rs1.getString(11);
                        form2Con12 = rs1.getString(12);
                        form2Con13 = rs1.getString(13);
                        form2Con14 = rs1.getString(14);
                        form2Con15 = rs1.getString(15);
                        form2Con16 = rs1.getString(16);
                        form2Con17 = rs1.getString(17);
                        form2Con18 = rs1.getString(18);
                        form2Con19 = rs1.getString(19);
                        form2Con20 = rs1.getString(20);
                        form2Con21 = rs1.getString(21);
                        form2Con22 = rs1.getString(22);
                        form2Con23 = rs1.getString(23);
                        form2Con24 = rs1.getString(24);
                        form2Con25 = rs1.getString(25);
                        form2Con26 = rs1.getString(26);
                        form2Con27 = rs1.getString(27);
                        form2Con28 = rs1.getString(28);
                        form2Con29 = rs1.getString(29);
                        form2Con30 = rs1.getString(30);
                        form2Con31 = rs1.getString(31);
                        form2Con32 = rs1.getString(32);
                        form2Con33 = rs1.getString(33);

                        System.out.println("hey2");
                    }
                } catch (SQLException ex) {
                    System.out.println("Erreur recup col2 " + ex);
                }
            %>
        <main id="at-main" class="at-main at-haslayout">

            <div class="clearfix"></div>
            <section class="at-sectionspace at-haslayout">
                <div class="container">
                    <h1 style="text-align: center;">Inscription Collective form = <%=formulaire_id%></h1>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="at-content">
                                <div class="at-contactusvone">
                                    <form class="at-formtheme at-formcontacus"  action="ServCol2" method="post">
                                        
                                        <div class="at-sectiontitleborder">
                                            <br/>
                                        <hr/>
                                            <h2><center>Veuillez remplir ce formulaire : <strong>&eacute;tape 2</strong> </center></h2>   
                                         <hr/>
                                        </div>
                                        <br/>
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h3><center>IDENTIFICATION PROFIL ECONOMIQUE DU COLLECTIF-DEMANDEUR </center></h3> 
                                              <h4><center><strong> Avez-vous des activit&eacute;s ou &eacute;quipements dans le Pays? </strong></center></h4>   
                                        <hr/>
                                         
                                         <div class="col-xs-12 col-sm-4 col-md-4 col-lg-12 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="activ1_equip"  id="activ_equip_primaire" onchange="changeStatus();" required="Champ Obligatoire">
                                                <option value="<%=form2Con3%>" >1- Avez-vous des activit&eacute;s ou &eacute;quipements dans le pays ?** -</option>
                                                <option value="OUI">OUI</option>
                                                <option value="NON">NON</option>
                                                </select>
                                            </div>
                                        </div>
                                        <fieldset>
                                               <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="activ_equip_region" value="<%=form2Con4%>" id="region" required="Champ Obligatoire"> 
                                                        <option value="<%=form2Con4%>" >- 2- Dans quelle r&eacute;gion avez-vous vos activit&eacute;s ?** -</option>
                                               
                                                        </select>
                                                    </div>
                                                </div>
                                                                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="activ_equip_depart" value="<%=form2Con5%>" id="departement"  required="Champ Obligatoire"> 
                                                        <option value="<%=form2Con5%>">- 3- Dans quel d&eacute;partement avez-vous vos activit&eacute;s ?** -</option>
                                                                                                          
                                                        </select>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                       <select class="form-control" name="activ_equip_commune" value="<%=form2Con6%>" id="commune" required="Champ Obligatoire"> 
                                                        <option value="<%=form2Con6%>" >- 4- Dans quelle commune avez-vous vos activit&eacute;s ?** -</option>
                                                      </select>
                                                    </div>
                                                </div>
                                      <script>
                       var Localite = {
        "Dakar" :  { 
              "Dakar" : ["Gor�e", "Dakar Plateau", "Gueule Tap�e", "Fass", "Colobane", "Fann-Point E-Amiti�", "M�dina", "Grand-Dakar", "Biscuiterie", "Dieuppeul-Derkl�", "Hann-Bel-Air", "Sicap-Libert�", "HLM", "Mermoz-Sacr� Coeur", "Ouakam", "Ngor", "Yoff", "Grand-Yoff", "Patte d?oie", "Parcelles Assainies", "Camb�r�ne" ], "Pikine" : ["Pikine- Est", "Pikine-Nord", "Pikine-Ouest", "Dalifort-Foirail", "Djeddha Thiaroye Kao", "Guinaw Rail-Nord", "Guinaw Rail-Sud", "Tivaoune-Diacksao", "Diamagueune-Sicap Mbao", "Mbao", "Keur Massar", "Malika", "Yeumbeul-Sud", "Yeumbeul-Nord"], "Gu�diawaye" : ["Golf-Sud", "Sam-Notaire", "Ndiar�me-Limamoulaye", "Wakhinane", "M�dina Gounass"], "Rufisque" : ["Bargny","S�bikotane","Sendou","Rufisque-Est","Rufisque-Nord","Rufisque-Ouest","Bambylor","Y�ne","Tivaouane Peulh-Niaga","Diamniadio","Sangalkam","Jaxaay-Parcelles-Niakoul Rap"]
          },                                                          
        "Thies" :  { 
             "Thies" : ["Khombole", "Pout", "Thi�s-Ouest", "Thi�s-Est","Thi�s-Nord","Thi�naba","Ngoudiane","Ndi�y�ne Sirakh","Touba Toul","Keur Moussa","Diender","Fand�ne","Kayar","Notto","Tass�te"], "Tivaouane" : ["Tivaouane", "M�kh�", "Mboro", "M�ouane", "Darou Khoudoss", "Ta�ba Ndiaye", "M�rina Dakhar", "Koul", "P�k�sse", "Niakh�ne", "Mbay�ne", "Thilmakha", "Ngandiouf", "Notto Gouye Diama", "Mont Rolland", "Pire Goureye", "Ch�rif Lo", "Pambal"], "Mbour" : ["Mbour", "Joal Fadiouth", "Fissel", "Ndiaganiao", "Sessene", "Sandiara", "Ngu�ni�ne", "Thiadiaye", "Sindia", "Malicounda", "Diass", "Ngu�khokh", "Saly Portudal", "Ngaparou", "Somone", "Popenguine-Ndayane"]
          },
        "Louga" :  { 
             "Louga" : ["Coki", "Ndiagne", "Guet Ardo", "Thiam�ne Cayor", "P�t� Ouarack", "Keur Momar Sarr", "Nguer Malal", "Syer", "Gande", "Mb�diene", "Niomr�", "Nguidil�", "K�le Gueye", "L�ona", "Sakal", "Ngueune Sarr"], "K�b�mer" : ["Bandegne Ouolof", "Diokoul Diawrigne", "Kab Gaye", "Ndande", "Thieppe", "Gu�oul", "Mback� Cajor", "Darou Marnane", "Darou Mousty", "Mbadiane", "Ndoyene", "Sam Yabal", "Touba M�rina", "Ngourane Ouolof", "Thiolom Fall", "Sagatta Gueth", "Kan�ne Ndiob", "Loro"], "Lingu�re" : ["Lingu�re", "Dahra", "Bark�dji", "Gassane", "Thiargny", "Thiel", "Boulal", "Dealy", "Thiam�ne Pass", "Sagatta Djolof", "Aff� Djiolof", "Dodji", "Labgar", "Ouarkhokh", "Kamb", "Mboula", "T�ss�k�r� Forage", "Yang-Yang"]
          },
          "Kaolack" : { 
             "Kaolack" : ["Kaolack", "Kahone", "Keur Baka", "Latmingu�", "Thiar�", "Ndoffane", "Keur Soc�", "Ndiaffate", "Ndiedieng", "Dya", "Ndi�bel", "Thiomby", "Gandiaye", "Sibassor"], "Guinguin�o" : ["Guinguin�o", "Khelcom ? Birane", "Mbadakhoune", "Ndiago", "Ngathie Naoud�", "Fass", "Gagnick", "Dara Mboss", "Ngu�lou", "Ngu�lou", "Ourour", "Panal Ouolof", "Mboss"], "Nioro du Rip" : ["Kayemor", "M�dina Sabakh", "Ngayene", "Gainthe Kaye", "Dabaly", "Darou Salam", "Paos Koto", "Porokhane", "Ta�ba Niass�ne", "Keur Maba Diakhou", "Keur Madongo", "Ndram� Escale", "Wack Ngouna", "Keur Madiabel"]
          },
         "Diourbel" : { 
             "Diourbel" : ["Diourbel", "Ndoulo", "Ngohe", "Pattar", "Tocky Gare", "Tour� Mbond�", "Ndankh S�ne", "Gade Escale", "Touba Lapp�", "Keur Ngalgou", "Ndindy", "Ta�ba Moutoupha"], "Bambey" : ["Bambey", "Dinguiraye", "Baba Garage", "Keur Samba Kane", "Ngoye", "Thiakhar", "Ndondol", "Ndangalma", "Lambaye", "R�fane", "Gawane", "Ngogom"], "Mback�" : ["Ngogom", "Touba Mosqu�e", "Dalla Ngabou", "Missirah" , "Nghaye", "Touba Fall", "Darou Salam Typ" , "Darou Nahim", "Kael", "Madina" , "Touba Mboul", "Ta�ba Thi�k�ne", "Dend�ye Gouy Gui" , "Ndioumane", "Ta�f", "Sadio" ]
          }, 
          "Fatick" : { 
             "Fatick" : ["Dioffior", "Thiar� Ndialgui", "Diaoul�", "Mb�llacadiao", "Ndiop", "Ndiop", "Diakhao", "Djilasse", "Djilasse", "Loul Sess�ne", "Palmarin Facao", "Niakhar", "Ngayokh�me", "Patar", "Diarr�re", "Diouroup", "Tattaguine"], "Foundiougne" : ["Foundiougne", "Sokone", "Keur Saloum Dian�", "Keur Samba Gueye", "Toubacouta", "Nioro Alassane Tall", "Karang Poste", "Passy", "Soum", "Diossong", "Djilor", "Niass�ne", "Diagane Barka", "Diagane Barka", "Mbam", "Bassoul", "Dionewar", "Djirnda"], "Gossas" : ["Gossas", "Colobane", "Mbar", "Ndiene Lagane", "Ouadiour", "Patar Lia"]
          }, 
          "Kaffrine" : { 
             "Kaffrine" : ["Nganda", "Diamagadio", "Diokoul Belbouck", "Kathiotte", "M�dinatoul Salam 2", "Gniby", "Boulel", "Kahi"], "Birkilane" : ["Birkelane", "Keur Mboucki", "Touba Mbella", "Diamal", "Mabo", "Ndiognick", "S�gr�-gatta", "Mbeuleup"], "Mal�me-Hodar" : ["Mal�me-Hodar", "Darou Miname II", "Khelcom", "Ndioum Ngainth", "Ndiob�ne Samba Lamo", "Sagna", "Diank� Souf "],  "Koungheul" : ["Koungheul", "Missirah Wad�ne", "Maka Yop", "Ngainthe Path�", "Fass Thi�k�ne", "Saly Escale", "Ida Mouride", "Ribot Escale", "Lour Escale"]
          }, 
          "Saint-Louis" : { 
             "Saint-Louis" : ["Saint-Louis", "Mpal", "Fass Ngom", "Ndi�b�ne Gandiol", "Gandon"], "Dagana" : ["Dagana", "Richard Toll", "Ross-B�thio", "Rosso-S�n�gal", "Ngnith", "Diama", "Ronkh", "Ndombo Sandjiry", "Gae", "Bokhol", "Mbane"], "Podor" : ["Podor", "M�ry", "Doumga Lao", "Madina Diathb�", "Goll�r�", "Mboumba", "Walald�", "A�r� Lao", "Gamadji Sar�", "Dodel", "Gued� Village", "Gu�d� Chantier", "D�mette", "Bod� Lao", "Fanaye", "Ndiayene Peindao", "Ndiandane", "Mbolo Birane", "Bok� Dialloub�", "Galoya Toucouleur", "P�t�"]
          }, 
          "Matam" : { 
             "Matam" : ["Matam", "Ourossogui", "Thilogne", "Nguidjilone", "Dabia", "Des Agnam Civol", "Or�fond�", "Bokidiaw�", "Nabadji Civol", "Ogo"], "Kanel" : ["Kanel", "Odob�r�", "Wouro Sidy", "Ndendory", "Sinthiou Bamamb� Banadji", "Hamady Hounar�", "Aour�", "Bokiladji", "Orkadi�r�", "Ouaound�", "Semm�", "Dembancan�"], "Ran�rou" : ["Ran�rou", "Lougr� Thioly", "Oudalaye", "V�lingara"]
          }, 
          "K�dougou" : { 
             "K�dougou" : ["K�dougou", "Nin�f�cha", "Bandafassi", "Tomboroncoto", "Dindefelo", "Fongolimbi", "Dimboli"], "Sal�mata" : ["Sal�mata", "K�voye", "Dakat�li", "Ethiolo", "Oubadji", "Dar salam"], "Saraya" : ["Saraya", "Bembou", "M�dina Baff�", "Sabodala", "Khossanto", "Missirah Sirimana"]
          }, 

          "Tambacounda" : { 
             "Tambacounda" : ["Tambacounda", "Niani Toucouleur", "Makacolibantang", "Ndoga Babacar", "Missirah", "N�tt�boulou", "Dialacoto", "Sinthiou Mal�me", "Sinthiou Mal�me"], "Goudiry" : ["Goudiry", "Boynguel Bamba", "Sinthiou Mamadou Boubou", "Koussan", "Dougu�", "Diank� Makha", "Boutoucoufara", "Bani Israel", "Sinthiou Bocar Aly", "Koulor", "Bala", "Koar", "Goumbayel"], "Bakel" : ["Bakel", "B�l�", "Sinthiou Fissa", "Kidira", "Toumboura", "Sadatou", "Madina Foulb�", "Gathiary", "Gathiary", "Ballou", "Gabou", "Diawara"],  "Koumpentoum" : ["Koumpentoum", "Ndame", "M�r�to", "Kah�ne", "Bamba Thial�ne", "Payar", "Kouthiaba Wolof", "Kouthia Gaydi", "Pass Coto", "Malem Niany"]
          }, 
          "Kolda" : { 
             "Kolda" : ["Kolda", "Dialamb�r�", "M�dina Ch�rif", "Mampatim", "Coumbacara", "Coumbacara", "Bagadadji", "Dabo", "Thi�tty", "Sar� Bidji", "Guiro Y�ro Bocar", "Dioulacolon", "Tankanto Escale", "M�dina El hadj", "Salyk�gn�", "Sar� Yoba Di�ga"], "M�dina Yoro Foulah " : ["M�dina Yoro Foulah", "Badion", "Fafacourou", "Bourouco", "Bignarab�", "Ndorna", "Koulinto", "Niaming", "Dinguiraye", "Pata", "K�r�wane"], "V�lingara" : ["V�lingara", "Diaob�-Kabendou", "Kounkan�", "Kandia", "Sar� Coly Sall�", "Kandiaye", "N�mataba", "Pakour", "Paroumba", "Ouassadou", "Bonconto", "Linkering", "M�dina Gounass", "Sinthiang Koundara"]
          }, 
          "S�dhiou" : { 
             "S�dhiou" : ["S�dhiou", "Marssassoum", "Djiredji", "Bambaly", "Oudoucar", "Sama Kanta Peulh", "Diannah Ba", "Koussy", "Sakar", "Diend�", "Diannah Malary", "San Samba", "B�met Bidjini", "Djibabouya"], "Bounkiling" : ["Bounkiling", "Ndiamacouta", "Boghal", "Tankon", "Ndiamalathiel", "Djinany", "Diacounda", "Inor", "Kandion Mangana", "Bona", "Diambati", "Faoune", "Diaroum�", "Madina Wandifa"], "Goudomp" : ["Goudomp", "Diattacounda", "Samine", "Yarang Balante", "Mangaroungou Santo", "Simbandi Balante", "Djibanar", "Kaour", "Diouboudou", "Simbandi Brassou", "Bagh�re", "Niagh", "Tanaff", "Karantaba", "Kolibantang"]
          }, 

          "Ziguinchor" : { 
             "Ziguinchor" : ["Ziguinchor", "Niaguis", "Ad�ane", "Boutoupa Camaracounda", "Niassia", "Enampore" ], "Bignona" : ["Bignona", "Thionck Essyl", "Kataba 1", "Djinaky", "Kafountine", "Diouloulou", "Tenghori", "Niamone", "Ouonck", "Coubalan", "Balinghore", "Di�goune", "Kartiack", "Mangagoulack", "Mlomp", "Djibidione", "Oulampane", "Sindian", "Sindian"], "Oussouye" : ["Oussouye", "Diemb�ring", "Santhiaba Manjack", "Oukout", "Mlomp"]
          }
      }
               
               
               window.onload = function(){
                    var reg = document.getElementById("region"),
                        dept =  document.getElementById("departement"),  
                        comm  = document.getElementById("commune");
              
              for (var region in Localite ){
                  reg.options[reg.options.length] = new Option (region, region);
              }
          
              
              reg.onchange = function(){
                  dept.length = 1;
                  comm.length = 1;
                  if (this.selectedIndex < 1 )return;
                   for ( var departement in Localite[this.value]){
                       dept.options[dept.options.length] = new Option (departement, departement);
                   }
              }
              
              reg.onchange();
              dept.onchange = function(){
                  comm.length = 1;
                    if(this.selectedIndex < 1) return;
                    
                    var communes = Localite[reg.value][this.value];
                    for(var i = 0; i< communes.length; i++){
                        comm.options[comm.options.length] = new Option(communes[i], communes[i]);
                    }
    } 
}  
                           
</script>
                                   
                                              
                                                 <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left"> <!-- Champ ajout� -->
                                                        <div class="form-group">
                                                            <input type="text" name="activ_equip_qtr" value="<%=form2Con7%>" class="form-control" id="qtr_village" placeholder="- 5- Dans quel quartier ou village avez-vous des activit�s ?**" required>
                                                        </div>
                                                    </div>
                                               <script>
                                                function changeStatus00(){

                                                        var lc = document.getElementById("lieu_Collectif");
                                                        var pec = document.getElementById("pe");
                                                        var rec = document.getElementById("re");
                                                        var dec = document.getElementById("de");
                                                        var qvec = document.getElementById("qve");

                                                var rg = document.getElementById("region");
                                                var dpt = document.getElementById("departement");
                                                var comm = document.getElementById("commune");
                                                var qv = document.getElementById("qtr_village");

                                                    if(lc.value=="NON"){
                                                        pec.disabled=true; rec.disabled=true; dec.disabled=true; qvec.disabled=true;

                                                    }else{
                                                        rg.disabled=true; dpt.disabled=true;  comm.disabled=true; qv.disabled=true; 
                                                    }
                                                }

                                      </script>
                                            </fieldset>
                                        
                                        
                                        <script>
                                                        function changeStatus(){
                                                            var aepd = document.getElementById("activ_equip_primaire");
                                                            var aecd = document.getElementById("commune");
                                                            var aedd = document.getElementById("departement");
                                                            var aerd = document.getElementById("region");
                                                            var aqvd = document.getElementById("qtr_village");
                                                            if(aepd.value=="NON"){
                                                                 aecd.disabled=true; aedd.disabled=true;  aerd.disabled=true;  aqvd.disabled=true;  
                                                            }else{
                                                                 aecd.disabled=false; aedd.disabled=false;  aerd.disabled=false;  aqvd.disabled=false; 
                                                            }
                                                        }
                                                    </script>
                                         <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h4><center><strong>Avez-vous d'autres activit&eacute;s ou &eacute;quipements dans d'autres communes ? </strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="a_activ_equip"  id="activ_equip_secondaire" onchange="changeStatus0();"  required> <!--Champ ajout�-->
                                                <option value="<%=form2Con8%>" >1- Avez-vous d'autres activit&eacute;s ou &eacute;quipements dans d'autres localit�s ?** -</option>
                                                <option value="OUI">OUI</option>
                                                <option value="NON">NON</option>
                                                </select>
                                            </div>
                                          </div>
                                                   <script>
                                                        function changeStatus0(){
                                                            var aaed = document.getElementById("activ_equip_secondaire");
                                                            var aeld1 = document.getElementById("a2_activ_equip");
                                                            var aeld2 = document.getElementById("a2_activ_equip_lieu");
                                                            if(aaed.value=="NON"){
                                                                aeld1.disabled=true;
                                                                 aeld2.disabled=true;
                                                            }else{
                                                                aeld1.disabled=false;
                                                                 aeld2.disabled=false;
                                                            }
                                                        }
                                                    </script>
                                                    
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <input type="text" name="a2_activ_equip" value="<%=form2Con9%>" id="a2_activ_equip" class="form-control" placeholder="2- Citez les activit�s secondaires men�es par le Collectif ?"> <!--Champ ajout�-->
                                            </div>
                                        </div>  
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <input type="text" name="a2_activ_equip_lieu"  value="<%=form2Con10%>" id="a2_activ_equip_lieu" class="form-control" placeholder="3- Citez par ordre les localit�s secondaires ?" > <!--Champ ajout�-->
                                            </div>
                                        </div>  
                                       
                                        
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h4><center><strong>Quelle activit&eacute; &eacute;conomique primaire est men&eacute;e par le Collectif ? </strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-12 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="activ_economique"  id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                <option value="<%=form2Con11%>" >- Quelles activit&eacute;s &eacute;conomiques sont men&eacute;es par le Collectif ?** -</option>
                                                <option value="Epargne">Epargne</option>
                                                <option value="Production">Production</option>
                                                <option value="Transformation">Transformation</option>
                                                <option value="Distribution - Commerce">Distribution - Commerce</option>
                                                <option value="Transport et Manutention">Transport et Manutention</option>
                                                <option value="Autres services">Autres services</option>
                                                </select>
                                            </div>
                                        </div>
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h4><center><strong>Citez les activit�s secondaires menees par le collectif ? </strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                                     <div class="col-xs-12 col-sm-4 col-md-4 col-lg-12 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="activ_eco_second"  id="activ_second" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                <option value="<%=form2Con12%>" >- Quelles activit&eacute;s &eacute;conomiques secondaires sont men&eacute;es par le Collectif ?** -</option>
                                                <option value="Epargne">Epargne</option>
                                                <option value="Production">Production</option>
                                                <option value="Transformation">Transformation</option>
                                                <option value="Distribution - Commerce">Distribution - Commerce</option>
                                                <option value="Transport et Manutention">Transport et Manutention</option>
                                                <option value="Autres services">Autres services</option>
                                                <option value="Pas Activites Secondaires">Pas d'Activites Secondaires</option>
                                                </select>
                                            </div>
                                        </div>
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h4><center><strong>Avez-vous d'autres activit&eacute;s ou &eacute;quipements dans d'autres pays ? </strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="activ_equip_etrang"  id="activ_equip_secondaire" onchange="changeStatus0();"  required=> <!--Champ ajout�-->
                                                <option value="<%=form2Con13%>" >1- Avez-vous d'autres activit&eacute;s ou &eacute;quipements dans d'autres pays ?** -</option>
                                                <option value="OUI">OUI</option>
                                                <option value="NON">NON</option>
                                                </select>
                                            </div>
                                          </div>
                                                   <script>
                                                        function changeStatus0(){
                                                            var aaed = document.getElementById("activ_equip_secondaire");
                                                            var aeld1 = document.getElementById("activ_equip_localite1");
                                                            var aeld2 = document.getElementById("activ_equip_localite2");
                                                            if(aaed.value=="NON"){
                                                                aeld1.disabled=true;
                                                                 aeld2.disabled=true;
                                                            }else{
                                                                aeld1.disabled=false;
                                                                 aeld2.disabled=false;
                                                            }
                                                        }
                                                    </script>
                                                    
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <input type="text" name="a1_equip_etrang" value="<%=form2Con14%>" id="activ_equip_localite1" class="form-control" placeholder="2- Citez les activit�s secondaires men�es par le Collectif dans les pays �trangers ?"> <!--Champ ajout�-->
                                            </div>
                                        </div>  
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                            <div class="form-group">
                                                <input type="text" name="a1_equip_etrang_lieu"value="<%=form2Con15%>" id="activ_equip_localite2" class="form-control" placeholder="3- Citez par ordre les localit�s secondaires des pays �trangers ?" > <!--Champ ajout�-->
                                            </div>
                                        </div>  
                                       
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h4><center><strong>Quelle est la situation economique du Collectif ? </strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                         
                                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="mont_cap_social" value="<%=form2Con16%>" class="form-control" placeholder=" 1- Quel est le montant Capital social ?**" required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="nbre_empl_perman" value="<%=form2Con17%>" class="form-control" placeholder=" 2- Quel est le nombre d'employ&eacute;s permanents actuellement ?** " required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="nbre_empl_tempor" value="<%=form2Con18%>" class="form-control" placeholder=" 3-  Quel est le nombre d'employ&eacute;s temporaires actuellement ?** " required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="mont_eparg_mob" value="<%=form2Con19%>" class="form-control" placeholder=" 4- Quel est le montant &eacute;agn&eacute; mobilis&eacute; ces trois (3ans) derni&egrave;res ann&eacute;es ? ">
                                                    </div>
                                                </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="mont_endettement" value="<%=form2Con20%>" class="form-control" placeholder=" 5- Quel est le montant endettement ces trois (3ans) derni?res ann&eacute;es ? ">
                                                    </div>
                                                </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="mont_sub_recu" value="<%=form2Con21%>" class="form-control" placeholder=" 6- Quel est le montant subvention re?u ces trois (3ans) derni?res ann&eacute;es ?">
                                                    </div>
                                                </div>
                                        
                                        <fieldset>
                                            <div class="row">
                                        <hr/>
                                              <h3><center>IDENTIFICATION PROFIL GOUVERNANCE DU COLLECTIF-DEMANDEUR</center></h3>
                                              <h4><center><strong>Quelle est la situation de la gouvernance du Collectif ?</strong></center></h4>  
                                        <hr/>
                                         </fieldset>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="fonctionnalite" value="<%=form2Con22%>" class="form-control" placeholder="1- Fonctionnalit&eacute; des organes?**" required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                                
                                                
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="prise_decision" value="<%=form2Con23%>" class="form-control" placeholder="2- Mode prise de d&eacute;cision?**" required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                               
                                              <!--  <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="charte_relationnelle" class="form-control" placeholder="3- Disponibilit? d'une charte des membres ?">
                                                    </div>
                                                </div>
                                        -->
                                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="charte_relationnelle" value="<%=form2Con24%>" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value="<%=form2Con24%>"> 3- Disponibilit&eacute; d'une charte des membres ?** -</option>
                                                        <option value="OUI">OUI</option>
                                                        <option value="NON">NON</option>
                                                        </select>
                                                    </div>
                                                </div>
                                              <!--  <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="plan_developpement" class="form-control" placeholder="4- Disponibilit? d'un plan de developpement ? ">
                                                    </div>
                                                </div>  
                                           -->
                                         <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="plan_developpement" value="<%=form2Con25%>" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value="<%=form2Con25%>" > 4- Disponibilit&eacute; d'un plan de d&eacute;veloppement ?** -</option>
                                                        <option value="OUI">OUI</option>
                                                        <option value="NON">NON</option>
                                                        </select>
                                                    </div>
                                                </div>
                                              <!-- <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="manuel_procedure" class="form-control" placeholder="5- Disponibilit? d'un manuel de proc?dure ? ">
                                                    </div>
                                                </div> 
                                              -->
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="manuel_procedure" value="<%=form2Con26%>" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value="<%=form2Con26%>"> 5- Disponibilit&eacute; d'un manuel de proc&eacute;dure ?** -</option>
                                                        <option value="OUI">OUI</option>
                                                        <option value="NON">NON</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            </fieldset>
                                            <br />
                                            <hr />

                                            <fieldset>
                                            <div class="row">
                                                      
                                                    <hr />
                                                    <h4><center><strong> Quelle Est La strat&eacute;gie partenariale Du Collectif ? </strong></center></h4> 
                                                    <hr />
                                        
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="part_princ_technique" value="<%=form2Con27%>" class="form-control" placeholder="1- Principal Partenaire technique ?** -" required="Champ Obligatoire">
                                                    </div>
                                                </div>  
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="part_princ_financier" value="<%=form2Con28%>" class="form-control" placeholder="2- Principal Partenaire financier ?** -" required="Champ Obligatoire">
                                                    </div>
                                                </div>     
                                                
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="app_reseau" value="<%=form2Con29%>" id="app_reseau" onchange="changeStatus00();">
                                                        <option value="<%=form2Con29%>" >3 - Appartenance &agrave; un r&eacute;seau ?** -</option>
                                                        <option value="OUI">OUI</option>
                                                        <option value="NON">NON</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                    <br />
                                                    
                                                      <script>
                                                        function changeStatus00(){
                                                            var ard = document.getElementById("app_reseau");
                                                            var nrd = document.getElementById("nature_reseau");
                                                            var lrd = document.getElementById("localite_reseau");
                                                            var drd = document.getElementById("departement_reseau");
                                                            if(ard.value=="NON"){
                                                                 nrd.disabled=true;
                                                                 lrd.disabled=true;
                                                                 drd.disabled=true;
                                                            }else{
                                                                nrd.disabled=false;
                                                                 lrd.disabled=false;
                                                                 drd.disabled=false;
                                                            }
                                                        }
                                                    </script>
                                                    
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="nature_reseau" value="<%=form2Con30%>" id="nature_reseau" class="form-control" placeholder="4- Nature R&eacute;seau ?** -" required="Champ Obligatoire">
                                                    </div>
                                                </div>
                                                 
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="localite_reseau" value="<%=form2Con31%>" id="localite_reseau" class="form-control" placeholder="5- Localit&eacute; du R&eacute;seau ? -">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <input type="text" name="departement_reseau" value="<%=form2Con32%>" id="departement_reseau"class="form-control" placeholder="6- Departement R&eacute;seau ? -">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="nat_intern_reseau" value="<%=form2Con33%>" id="demo-category" onchange="changementType( this.value);" required="Champ Obligatoire">
                                                        <option value="<%=form2Con33%>">7- National ou International ?** -</option>
                                                        <option value="national">National</option>
                                                        <option value="international">International</option>
                                                        </select>
                                                    </div>
                                                </div> 
                                                <hr/>
                                            </fieldset>
                                        
                                            <fieldset>
                                                <hr/>
                                                <input type="hidden" value="<%=formulaire_id%>" name="formulaire_id">  
                                                <input type="hidden" value="<%=idx%>" name="id">  
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-left">
                                                    <center><button type="submit" name="type1" class="at-btn">ENREGISTRER LES MODIFICATIONS</button></center>
                                                </div>
                                                </div>
                                                <hr/>
                                            </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!--************************************
				Main End
		*************************************-->
        <!--************************************
				Footer Start
		*************************************-->
        <footer id="at-footer" class="at-footer at-haslayout">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="at-emailsubscribearea">
                            <p>Recevez nos derni?res informations</p>
                            <form class="at-formtheme at-formnewsletter">
                                <fieldset>
                                    <input type="email" name="email" class="form-control" placeholder="Votre adresse e-mail">
                                    <button class="at-btn" type="submit">Souscrire</button>
                                </fieldset>
                            </form>
                        </div>
                        <div class="at-threecolumns">
                            <div class="at-fcolumn">
                                <div class="at-widget at-widgettext">
                                    <strong class="at-logo"><a href="javascript:void(0);"><img src="images/logof.png" alt="image description"></a></strong>
                               <!--     <div class="at-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adi pisi cing elit, sed do eiusmod tempor Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, the consectetur.</p>
                                    </div> -->
                                    <ul class="at-socialicons">
                                        <li class="at-facebook"><a href="www.facebook.com/taataan"><i class="fa fa-facebook"></i></a></li>
                                        <li class="at-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li class="at-instagram"><a href="www.youtube.com/taataan"><i class="fa fa-youtube"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="at-fcolumn">
                                <div class="at-widget at-widgetusefullinks">
                                    <div class="at-fwidgettitle">
                                        <h3>Liens Utiles</h3>
                                    </div>
                                    <div class="at-widgetcontent">
                                        <ul>
                                            <li><a href="index.html">Accueil</a></li>
                                            <li><a href="javascript:void(0);">S'INSCRIRE</a></li>
                                            <li><a href="https://www.adel-invest.com">Adel-invest</a></li>
                                            <li><a href="https://www.taataan.sn">Taataan</a></li>
                                            <li><p>Email: contact@taataan.sn</p></li>
                                        </ul>
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
                                            <!--    <p>Product Design &amp; Branding Innovative Brand Design Concepts</p> -->
                                                <time datetime="2018-01-12">January 28, 2018</time>
                                            </li>
                                            <li>
                                            <!--    <p>Product Design &amp; Branding Innovative Brand Design Concepts</p> -->
                                                <time datetime="2020-24-11">Novembre 24, 2020</time>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="at-copyright">
                            <p>Adresse: ZAC MBAO villa N?3 4i?me Etage Cit? Socidak 1 en face Brioche Dor?e, Rufisque Ouvert de 08H ? 18H</p>
                            <p>Copyright @ 2020. <a href="javascript:void(0);">Badel</a> All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--************************************
				Footer End
		*************************************-->
                            <%
                    }
                 con.close();
                 System.out.println("Connection Closed");
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
            %>
    </div>
    <!--************************************
			Wrapper End
	*************************************-->
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