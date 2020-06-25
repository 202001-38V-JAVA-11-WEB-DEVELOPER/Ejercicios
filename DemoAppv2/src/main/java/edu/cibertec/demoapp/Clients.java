/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.cibertec.demoapp;

/**
 *
 * @author Usuario
 */
public class Clients {

    private String ruc;
     
    private String nombre;

    private String sector;
     
    private String direccion;

    private String web;
    
    // constructors
    // standard getters and setters.
    
    public Clients (String ruc, String nombre, String sector, String direccion, String web)
    {
        super();
        this.ruc = ruc;
        this.nombre = nombre;
        this.sector = sector;
        this.direccion = direccion;
        this.web = web;
    }
     
    

}

