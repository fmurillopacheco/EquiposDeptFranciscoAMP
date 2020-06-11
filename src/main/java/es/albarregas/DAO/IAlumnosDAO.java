
package es.albarregas.DAO;

import es.albarregas.beans.Alumno;
import java.util.ArrayList;

/**
 *
 * @author Francisco_Antonio
 */
public interface IAlumnosDAO {
    public ArrayList<Alumno> leerAlumnos();//Alumnos
    public ArrayList<Alumno> leerAlumnosSinEquipo();//Alumnos sin equipo
    public ArrayList<Alumno> leerAlumnosYEquipoAsociado();//Alumnos y equipos asociados
    public void insertarAlumno(Alumno alumno);
    public void actualizarAlumno(Alumno alumno);
    public void eliminarAlumnos(Alumno alumno);
    public Alumno getAlumno(int idAlumno);
    public void closeConnection();
}
