package com.pixelbit.survey.pojo;

import java.io.Serializable;
import java.util.HashSet;

public class EnquestaVideojocs extends Enquesta implements Serializable {
    private static final long serialVersionUID = 665848077020956922L;

    String[] opcionsConsola;
    private String opcionsJocs;

    public EnquestaVideojocs() {
        super();
    }

    public EnquestaVideojocs(long id, Entrevistat personaEntrevistada, Empresa empresaEnquesta, HashSet<Pregunta> preguntes, String[] opcionsConsola, String opcionsJocs) {
        super(id, personaEntrevistada, empresaEnquesta, preguntes);
        this.opcionsConsola = opcionsConsola;
        this.opcionsJocs = opcionsJocs;
    }

    public String[] getOpcionsConsola() {
        return opcionsConsola;
    }

    public void setOpcionsConsola(String[] opcionsConsola) {
        this.opcionsConsola = opcionsConsola;
    }

    public String getOpcionsJocs() {
        return opcionsJocs;
    }

    public void setOpcionsJocs(String opcionsJocs) {
        this.opcionsJocs = opcionsJocs;
    }


}
