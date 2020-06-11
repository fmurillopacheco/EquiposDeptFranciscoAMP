
package es.albarregas.controllers;

import es.albarregas.DAO.IAlumnosDAO;
import es.albarregas.DAO.IEquiposDAO;
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
@WebServlet(name = "Operacion", urlPatterns = {"/Operacion"})
public class Operacion extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String url = "";

        if (request.getParameter("operacion") != null) {
            switch (request.getParameter("operacion")) {
                case "insertAlumno":
                    url = "JSP/insertar/alumno/insertar.jsp";
                    break;
                case "insertEquipo":
                    url = "JSP/insertar/equipo/insertar.jsp";
                    break;
                case "actualizarAlumno":
                    DAOFactory daof = DAOFactory.getDAOFactory(1);
            IAlumnosDAO odao = daof.getAlumnosDAO();
            ArrayList<Alumno> alumnos = odao.leerAlumnos();

            request.setAttribute("alumnos", alumnos);
                    url = "JSP/actualizar/alumno/leerActualizar.jsp";
                    break;
                case "actualizarEquipo":
                    url = "JSP/actualizar/equipo/leerActualizar.jsp";
                    break;
                case "eliminarAlumnos":
                    url = "JSP/eliminar/alumno/leerEliminar.jsp";
                    break;
                case "eliminarEquipos":
                    url = "JSP/eliminar/equipo/leerEliminar.jsp";
                    break;
                case "visualizarAlumnos":
                    obtenerDatos(request, response);
                    url = "JSP/visualizar/visualizarAlumnos.jsp";
                    break;
                case "visualizarEquipos":
                    obtenerDatos(request, response);
                    url = "JSP/visualizar/visualizarEquipos.jsp";
                    break;
                case "visualizarAlumYEquipAsociados":
                    obtenerDatos(request, response);
                    url = "JSP/visualizar/visualizarAlumYEquipAsociados.jsp";
                    break;
                case "visualizarAlumYEquip":
                    obtenerDatos(request, response);
                    url = "JSP/visualizar/visualizarAlumYEquip.jsp";
                    break;
                case "visualizarAlumSinEquip":
                    obtenerDatos(request, response);
                    url = "JSP/visualizar/visualizarAlumSinEquip.jsp";
                    break;
                case "visualizarEquipSinAlum":
                    obtenerDatos(request, response);
                    url = "JSP/visualizar/visualizarEquipSinAlum.jsp";
                    break;
            }
        }

        request.getRequestDispatcher(url).forward(request, response);
    }

    public void obtenerDatos(HttpServletRequest request, HttpServletResponse response) {
        HttpSession sesion = request.getSession();
        if (request.getParameter("operacion").equals("visualizarAlumnos")) {

            DAOFactory daof = DAOFactory.getDAOFactory(1);
            IAlumnosDAO odao = daof.getAlumnosDAO();
            ArrayList<Alumno> alumnos = odao.leerAlumnos();

            sesion.setAttribute("alumnos", alumnos);
            
        } else if(request.getParameter("operacion").equals("visualizarEquipos")){
            DAOFactory daof = DAOFactory.getDAOFactory(1);
            IEquiposDAO odao = daof.getEquiposDAO();
            ArrayList<Equipo> equipos = odao.leerEquipos();
            
            sesion.setAttribute("equipos", equipos);
            
        } else if(request.getParameter("operacion").equals("visualizarAlumYEquipAsociados")){
            DAOFactory daof = DAOFactory.getDAOFactory(1);
            IAlumnosDAO odao = daof.getAlumnosDAO();
            ArrayList<Alumno> alumnosYEquipoAsociado = odao.leerAlumnosYEquipoAsociado();
            
            sesion.setAttribute("alumnosYEquipoAsociado", alumnosYEquipoAsociado);
            
        } else if(request.getParameter("operacion").equals("visualizarAlumYEquip")){
            DAOFactory daof = DAOFactory.getDAOFactory(1);
            IAlumnosDAO odao = daof.getAlumnosDAO();
            ArrayList<Alumno> alumSinEquip = odao.leerAlumnosSinEquipo();
            
            sesion.setAttribute("alumSinEquip", alumSinEquip);
            
        } else if(request.getParameter("operacion").equals("visualizarAlumSinEquip")){
            DAOFactory daof = DAOFactory.getDAOFactory(1);
            IEquiposDAO odao = daof.getEquiposDAO();
            ArrayList<Equipo> equiposSinAlum = odao.leerEquipos();
            
            sesion.setAttribute("visualizarAlumSinEquip", equiposSinAlum);
            
        } else if(request.getParameter("operacion").equals("visualizarEquipSinAlum")){
            DAOFactory daof = DAOFactory.getDAOFactory(1);
            IEquiposDAO odao = daof.getEquiposDAO();
            ArrayList<Equipo> equiposSinAlum = odao.leerEquipos();
            
            sesion.setAttribute("visualizarEquipSinAlum", equiposSinAlum);
            
        }
    }
    }


}
