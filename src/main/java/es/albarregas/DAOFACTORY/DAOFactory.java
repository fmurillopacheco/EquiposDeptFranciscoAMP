
package es.albarregas.DAOFACTORY;

import es.albarregas.DAO.IAlumnosDAO;
import es.albarregas.DAO.IEquiposDAO;
import es.albarregas.DAO.IGruposDAO;

/**
 *
 * @author Francisco_Antonio
 */
public abstract class DAOFactory {
    
        public static final int MYSQL = 1;

    public abstract IAlumnosDAO getAlumnosDAO();
    public abstract IEquiposDAO getEquiposDAO();
    public abstract IGruposDAO getGruposDAO();

    public static DAOFactory getDAOFactory(int tipo) {
        DAOFactory daof = null;

        switch (tipo) {
            case MYSQL:
                daof = new MySQLDAOFactory();
                break;
        }
        return daof;
    }
}
