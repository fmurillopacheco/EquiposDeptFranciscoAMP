
package es.albarregas.DAOFACTORY;

import es.albarregas.DAO.AlumnosDAO;
import es.albarregas.DAO.EquiposDAO;
import es.albarregas.DAO.GruposDAO;
import es.albarregas.DAO.IAlumnosDAO;
import es.albarregas.DAO.IEquiposDAO;
import es.albarregas.DAO.IGruposDAO;

/**
 *
 * @author Francisco_Antonio
 */
public class MySQLDAOFactory extends DAOFactory{

    public IAlumnosDAO getAlumnosDAO() {
        return new AlumnosDAO();
    }

    public IEquiposDAO getEquiposDAO() {
        return new EquiposDAO();
    }
    
    public IGruposDAO getGruposDAO() {
        return new GruposDAO();
    }
}
