/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ap.webappinfetti;

/**
 *
 * @author condor
 */
public class Infetti {
     String id;
    String nome;
    String cognome;
    String dataNascita;
    String residenza;
    String giorniQuarantena;

    public Infetti(String id, String nome, String cognome, String dataNascita, String residenza, String giorniQuarantena) {
        this.id = id;
        this.nome = nome;
        this.cognome = cognome;
        this.dataNascita = dataNascita;
        this.residenza = residenza;
        this.giorniQuarantena = giorniQuarantena;
    }

    public String getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getCognome() {
        return cognome;
    }

    public String getDataNascita() {
        return dataNascita;
    }

    public String getResidenza() {
        return residenza;
    }

    public String getGiorniQuarantena() {
        return giorniQuarantena;
    }
    
}
