
package es.albarregas.DAO;

import es.albarregas.beans.Alumno;
import es.albarregas.beans.Equipo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Francisco_Antonio
 */
public class EquiposDAO implements IEquiposDAO{
    
    @Override
    public ArrayList<Equipo> leerEquipos() {
        ArrayList<Equipo> lista = new ArrayList();
        String consulta = "Select * from equipos;";
         
        try {
            Statement sentencia = ConnectionFactory.getConnection().createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            while (resultado.next()) {
                Equipo equipo = new Equipo();
                equipo.setIdEquipo(resultado.getShort("idEquipo"));
                equipo.setMarca(resultado.getString("marca"));
                equipo.setNumSerie(resultado.getString("numSerie"));
                lista.add(equipo);
            }

            resultado.close();

        } catch (SQLException ex) {
            System.out.println("Error al ejecutar la sentecnia");
            ex.printStackTrace();
        }

        return lista;
    }

    @Override
    public ArrayList<Equipo> leerEquiposSinAlumno() {
        //
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Equipo> leerEquiposConAlumno() {
        ArrayList<Equipo> lista = new ArrayList();
        String consulta = "Select a.nombre, a.grupo, e.marca, e.idEquipo, e.numSerie from alumnos as a inner join equipos as e using(idEquipo);";
         
        try {
            Statement sentencia = ConnectionFactory.getConnection().createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            while (resultado.next()) {
                Equipo equipo = new Equipo();
                Alumno alumno = new Alumno();
                ArrayList<Alumno> alumnos = new ArrayList<>();
                equipo.setMarca(resultado.getString("marca"));
                equipo.setIdEquipo(resultado.getShort("idEquipo"));
                equipo.setNumSerie(resultado.getString("numSerie"));
                alumno.setNombre(resultado.getString("nombre"));
                alumno.setNombre(resultado.getString("grupo"));
                alumnos.add(alumno);
                equipo.setAlumnos(alumnos);//arrayList
                lista.add(equipo);
            }

            resultado.close();

        } catch (SQLException ex) {
            System.out.println("Error al ejecutar la sentecnia");
            ex.printStackTrace();
        }

        return lista;
    }

    @Override
    public void insertarEquipo(Equipo equipo) {
        String consulta = "insert into equipos (marca, numSerie) values (?,?)";
        
        try {
            PreparedStatement sentencia = ConnectionFactory.getConnection().prepareStatement(consulta);
            
            sentencia.setString(1, equipo.getMarca());
            sentencia.setString(2, equipo.getNumSerie());
            
            sentencia.executeUpdate();
            sentencia.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void actualizarEquipo(Equipo equipo) {
        String consulta = "uptade equipos set marca=?, numSerie=? where idEquipo=?";
        
        try {
            PreparedStatement sentencia = ConnectionFactory.getConnection().prepareStatement(consulta);
            
            sentencia.setString(1, equipo.getMarca());
            sentencia.setString(2, equipo.getNumSerie());
            
            sentencia.executeUpdate();
            sentencia.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void eliminarEquipos(Equipo equipo) {
         String consulta = "delete from equipos where idEquipo=?";
        
        try {
            PreparedStatement sentencia = ConnectionFactory.getConnection().prepareStatement(consulta);
            
            sentencia.setInt(1, equipo.getIdEquipo());
            
            sentencia.executeUpdate();
            sentencia.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public Equipo getEquipo(int idEquipo) {
         Equipo equipo = new Equipo();
         String consulta = "Select * from equipos where idEquipo=?;";
         
        try {
            Statement sentencia = ConnectionFactory.getConnection().createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            while (resultado.next()) {
               
                equipo.setIdEquipo(resultado.getShort("idEquipo"));
                equipo.setMarca(resultado.getString("marca"));
                equipo.setNumSerie(resultado.getString("numSerie"));
            }

            resultado.close();

        } catch (SQLException ex) {
            System.out.println("Error al ejecutar la sentecnia");
            ex.printStackTrace();
        }

        return equipo;
    }

    @Override
    public void closeConnection() {
          ConnectionFactory.closeConexion();
    }
}
