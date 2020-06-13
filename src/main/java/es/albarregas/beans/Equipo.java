
package es.albarregas.beans;

import java.util.ArrayList;

/**
 *
 * @author Francisco_Antonio
 */
public class Equipo {
    private Short idEquipo;
    private String marca;
    private String numSerie;
    private String foto;
    private ArrayList<Alumno> alumnos;

    public ArrayList<Alumno> getAlumnos() {
        return alumnos;
    }

    public void setAlumnos(ArrayList<Alumno> alumnos) {
        this.alumnos = alumnos;
    }

    public Short getIdEquipo() {
        return idEquipo;
    }

    public void setIdEquipo(Short idEquipo) {
        this.idEquipo = idEquipo;
    }



    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getNumSerie() {
        return numSerie;
    }

    public void setNumSerie(String numSerie) {
        this.numSerie = numSerie;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
    
    
}
