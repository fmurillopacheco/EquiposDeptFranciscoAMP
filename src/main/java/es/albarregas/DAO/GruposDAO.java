
package es.albarregas.DAO;

import es.albarregas.beans.Alumno;
import es.albarregas.beans.Grupo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Francisco_Antonio
 */
public class GruposDAO implements IGruposDAO{
    
    public ArrayList<Grupo> leerGrupos() {
        ArrayList<Grupo> lista = new ArrayList();
        String consulta = "Select * from grupos;";
         
        try {
            Statement sentencia = ConnectionFactory.getConnection().createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            while (resultado.next()) {
                Grupo grupo = new Grupo();
                grupo.setIdGrupo((byte) resultado.getInt("idGrupo"));
                grupo.setDenominacion(resultado.getString("denominacion"));
                grupo.setTutor(resultado.getString("tutor"));
                lista.add(grupo);
            }

            resultado.close();

        } catch (SQLException ex) {
            System.out.println("Error al ejecutar la sentecnia");
            ex.printStackTrace();
        }

        return lista;
    }

    public ArrayList<Grupo> leerGruposSinAlumno() {
        //
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Grupo> leerGruposConAlumno() {
        ArrayList<Grupo> lista = new ArrayList();
        String consulta = "Select a.nombre, a.apellidos, e.denominacion, e.idGrupo, e.tutor from alumnos as a inner join grupos as e using(idGrupo);";
         
        try {
            Statement sentencia = ConnectionFactory.getConnection().createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            while (resultado.next()) {
                Grupo grupo = new Grupo();
                Alumno alumno = new Alumno();
                ArrayList<Alumno> alumnos = new ArrayList<>();
                grupo.setDenominacion(resultado.getString("denominacion"));
                grupo.setIdGrupo((byte) resultado.getInt("idGrupo"));
                grupo.setTutor(resultado.getString("tutor"));
                alumno.setNombre(resultado.getString("nombre"));
                alumno.setNombre(resultado.getString("apellidos"));
                alumnos.add(alumno);
                lista.add(grupo);
            }

            resultado.close();

        } catch (SQLException ex) {
            System.out.println("Error al ejecutar la sentecnia");
            ex.printStackTrace();
        }

        return lista;
    }

    public void insertarGrupo(Grupo grupo) {
        String consulta = "insert into grupos (denominacion, tutor) values (?,?)";
        
        try {
            PreparedStatement sentencia = ConnectionFactory.getConnection().prepareStatement(consulta);
            
            sentencia.setString(1, grupo.getDenominacion());
            sentencia.setString(2, grupo.getTutor());
            
            sentencia.executeUpdate();
            sentencia.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void actualizarGrupo(Grupo grupo) {
        String consulta = "uptade grupos set denominacion=?, tutor=? where idGrupo=?";
        
        try {
            PreparedStatement sentencia = ConnectionFactory.getConnection().prepareStatement(consulta);
            
            sentencia.setString(1, grupo.getDenominacion());
            sentencia.setString(2, grupo.getTutor());
            
            sentencia.executeUpdate();
            sentencia.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void eliminarGrupos(Grupo grupo) {
         String consulta = "delete from grupos where idGrupo=?";
        
        try {
            PreparedStatement sentencia = ConnectionFactory.getConnection().prepareStatement(consulta);
            
            sentencia.setInt(1, grupo.getIdGrupo());
            
            sentencia.executeUpdate();
            sentencia.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public Grupo getGrupo(int idGrupo) {
         Grupo grupo = new Grupo();
         String consulta = "Select * from grupos where idGrupo=?;";
         
        try {
            Statement sentencia = ConnectionFactory.getConnection().createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            while (resultado.next()) {
               
                grupo.setIdGrupo((byte) resultado.getInt("idGrupo"));
                grupo.setDenominacion(resultado.getString("denominacion"));
                grupo.setTutor(resultado.getString("tutor"));
            }

            resultado.close();

        } catch (SQLException ex) {
            System.out.println("Error al ejecutar la sentecnia");
            ex.printStackTrace();
        }

        return grupo;
    }

    public void closeConnection() {
          ConnectionFactory.closeConexion();
    }
}
