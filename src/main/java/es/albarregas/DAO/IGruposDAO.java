
package es.albarregas.DAO;

import es.albarregas.beans.Grupo;
import java.util.ArrayList;

/**
 *
 * @author Francisco_Antonio
 */

public interface IGruposDAO {
    public ArrayList<Grupo> leerGrupos();//Grupos
    public ArrayList<Grupo> leerGruposSinAlumno();//Grupos sin alumnos
    public ArrayList<Grupo> leerGruposConAlumno();//Alumnos por grupo
    public void insertarGrupo(Grupo grupo);
    public void actualizarGrupo(Grupo grupo);
    public void eliminarGrupos(Grupo grupo);
    public Grupo getGrupo(int idGrupo);
    public void closeConnection();
}
