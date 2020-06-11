
package es.albarregas.DAO;

import es.albarregas.beans.Equipo;
import java.util.ArrayList;

/**
 *
 * @author Francisco_Antonio
 */
public interface IEquiposDAO {
    public ArrayList<Equipo> leerEquipos();//Equipos
    public ArrayList<Equipo> leerEquiposSinAlumno();//Equipos sin alumnos
    public ArrayList<Equipo> leerEquiposConAlumno();//Alumnos por equipo
    public void insertarEquipo(Equipo equipo);
    public void actualizarEquipo(Equipo equipo);
    public void eliminarEquipos(Equipo equipo);
    public Equipo getEquipo(int idEquipo);
    public void closeConnection();
}
