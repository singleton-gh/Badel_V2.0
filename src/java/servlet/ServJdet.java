/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.dataAccess;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ModJdet;

/**
 *
 * @author asus
 */
public class ServJdet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=ISO-8859-1");
        //try (PrintWriter out = response.getWriter()) {
        //    String typeAction = (String) request.getParameter("type1");
        
        String prenom = (String) request.getParameter("prenom");
        String nom = (String) request.getParameter("nom");
        String sexe = (String) request.getParameter("sexe");
        String tranche_age = (String) request.getParameter("tranche_age");
        String adresse = (String) request.getParameter("adresse");
        String email = (String) request.getParameter("email");
        String  tel1 = (String) request.getParameter("tel1");
        String tel2 = (String) request.getParameter("tel2");
        String dernier_diplome = (String) request.getParameter("dernier_diplome");
        String domaine1_etude = (String) request.getParameter("domaine1_etude");
        String diplome_encours = (String) request.getParameter("diplome_encours");
        String domaine_etude_encours = (String) request.getParameter("domaine_etude_encours");
        String  domaine2_etude = (String) request.getParameter("domaine2_etude");
        String region = (String) request.getParameter("region");
        String departement = (String) request.getParameter("departement");
        String commune  = (String) request.getParameter("commune");
       
       
        ModJdet mj = new ModJdet (prenom,nom,sexe,tranche_age,adresse,email,tel1,tel2,dernier_diplome,domaine1_etude,diplome_encours,domaine_etude_encours,domaine2_etude, region, departement, commune);
        dataAccess da = new dataAccess();
        da.InscrireJdet(mj);
        
        }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
