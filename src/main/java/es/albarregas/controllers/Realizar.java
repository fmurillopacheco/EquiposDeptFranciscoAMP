
package es.albarregas.controllers;

import es.albarregas.DAO.IAlumnosDAO;
import es.albarregas.DAOFACTORY.DAOFactory;
import es.albarregas.beans.Alumno;
import es.albarregas.beans.Equipo;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Francisco_Antonio
 */

@WebServlet(name = "Realizar", urlPatterns = {"/Realizar"})
public class Realizar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "";
        if (request.getParameter("operacion") != null) {
            switch (request.getParameter("operacion")) {
                case "insertarAlumno":
                    insertarAlumno(request, response);
                    url = "";
                    break;
            }
        }

        request.getRequestDispatcher(url).forward(request, response);
    }

    public void insertarAlumno(HttpServletRequest request, HttpServletResponse response) {
        HttpSession sesion = request.getSession();
        Alumno alum = new Alumno();
        Equipo equipo = new Equipo();
        alum.setNombre(request.getParameter("nombreAlum"));
        alum.setGrupo(request.getParameter("grupoAlum"));

        DAOFactory daof = DAOFactory.getDAOFactory(1);
        IAlumnosDAO idao = daof.getAlumnosDAO();
        equipo.setIdEquipo((byte) Integer.parseInt(request.getParameter("equipoAlumno")));


        idao.insertarAlumno(alum);

        ArrayList<Alumno> alumnos = (ArrayList<Alumno>) sesion.getAttribute("alumno");
        alumnos.add(alum);
        sesion.setAttribute("alumno", alumnos);
        
    }
    
    public void modificarAlumno(HttpServletRequest request, HttpServletResponse response){
        Alumno alum = new Alumno();
        alum.setNombre(request.getParameter("nombreAlum"));
        alum.setGrupo(request.getParameter("grupoAlum"));
        
        DAOFactory daof = DAOFactory.getDAOFactory(1);
        IAlumnosDAO idao = daof.getAlumnosDAO();
        
        idao.actualizarAlumno(alum);
    }
}
