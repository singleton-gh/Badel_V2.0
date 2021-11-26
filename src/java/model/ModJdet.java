/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author asus
 */
public class ModJdet {
   // private String demande_id;
    private String prenom;
    private String nom;
    private String sexe;
    private String tranche_age;
    private String adresse;
    private String email;
    private String tel1;
    private String tel2;
    private String dernier_diplome;
    private String domaine1_etude;
    private String diplome_encours;
    private String domaine_etude_encours;
    private String domaine2_etude;
    private String region;
    private String departement;
    private String commune;
    
    
    
    // Constructeur avec Parametres

    public ModJdet( String prenom, String nom, String sexe, String tranche_age, String adresse, String email, String tel1, String tel2, String dernier_diplome, String domaine1_etude, String diplome_encours, String domaine_etude_encours, String domaine2_etude, String region, String departement, String commune) {
       // this.demande_id = demande_id;
        this.prenom = prenom;
        this.nom = nom;
        this.sexe = sexe;
        this.tranche_age = tranche_age;
        this.adresse = adresse;
        this.email = email;
        this.tel1 = tel1;
        this.tel2 = tel2;
        this.dernier_diplome = dernier_diplome;
        this.domaine1_etude = domaine1_etude;
        this.diplome_encours = diplome_encours;
        this.domaine_etude_encours = domaine_etude_encours;
        this.domaine2_etude = domaine2_etude;
        this.region = region;
        this.departement = departement;
        this.commune = commune;
    }
    
    
    //Getteurs AND Setteurs


    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getTranche_age() {
        return tranche_age;
    }

    public void setTranche_age(String tranche_age) {
        this.tranche_age = tranche_age;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel1() {
        return tel1;
    }

    public void setTel1(String tel1) {
        this.tel1 = tel1;
    }

    public String getTel2() {
        return tel2;
    }

    public void setTel2(String tel2) {
        this.tel2 = tel2;
    }

    public String getDernier_diplome() {
        return dernier_diplome;
    }

    public void setDernier_diplome(String dernier_diplome) {
        this.dernier_diplome = dernier_diplome;
    }

    public String getDomaine1_etude() {
        return domaine1_etude;
    }

    public void setDomaine1_etude(String domaine1_etude) {
        this.domaine1_etude = domaine1_etude;
    }

    public String getDiplome_encours() {
        return diplome_encours;
    }

    public void setDiplome_encours(String diplome_encours) {
        this.diplome_encours = diplome_encours;
    }

    public String getDomaine_etude_encours() {
        return domaine_etude_encours;
    }

    public void setDomaine_etude_encours(String domaine_etude_encours) {
        this.domaine_etude_encours = domaine_etude_encours;
    }

    public String getDomaine2_etude() {
        return domaine2_etude;
    }

    public void setDomaine2_etude(String domaine2_etude) {
        this.domaine2_etude = domaine2_etude;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getDepartement() {
        return departement;
    }

    public void setDepartement(String departement) {
        this.departement = departement;
    }

    public String getCommune() {
        return commune;
    }

    public void setCommune(String commune) {
        this.commune = commune;
    }
    
    
}
