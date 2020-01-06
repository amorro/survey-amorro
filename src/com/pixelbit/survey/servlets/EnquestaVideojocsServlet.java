package com.pixelbit.survey.servlets;

import com.pixelbit.survey.pojo.*;
import com.pixelbit.survey.service.EmpresaService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class EnquestaVideojocsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EnquestaVideojocsServlet() { super(); }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Dins enquesta de videojocs");

        //Recuperar dades personals
        String tractament = request.getParameter("tractament");
        String dni = request.getParameter("dni");
        String nom = request.getParameter("nom");
        String llinatges = request.getParameter("llinatges");
        String email = request.getParameter("email");
        String telefon = request.getParameter("telefon");

        // Configurar objecte entrevistat
        Entrevistat entrevistat = new Entrevistat();
        entrevistat.setTractament(tractament);
        entrevistat.setDni(dni);
        entrevistat.setNom(nom);
        entrevistat.setLlinatges(llinatges);
        entrevistat.setEmail(email);
        entrevistat.setTelefon(telefon);

        // Recuperar dades de l'enquesta
        String respostaPreg1 = request.getParameter("pregunta-1");
        String respostaPreg2 = request.getParameter("pregunta-2");

        // Configurar llista de preguntes
        Pregunta preg1 = new Pregunta("Quina consola t'agrada més?", respostaPreg1);
        Pregunta preg2 = new Pregunta("Quin joc t'agrada més?", respostaPreg2);

        HashSet<Pregunta> llistaPreguntes = new HashSet<Pregunta>();
        llistaPreguntes.add(preg1);
        llistaPreguntes.add(preg2);

        // Recorrer opcions de consoles amb foreach:
        String[] aCheckboxConsoles = request.getParameterValues("consoles");


        // Dades de l'empresa contractadora de l'enquesta
        EmpresaService service = new EmpresaService();
        Empresa empresa = service.getEmpresa( (Integer) request.getAttribute("codiEmp") );

        // Configuram l'enquesta amb totes les dades
        EnquestaFormacio enq = new EnquestaFormacio(empresa, entrevistat, llistaPreguntes, aCheckboxConsoles);

        List<Enquesta> llistaEnquestes = (ArrayList<Enquesta>) request.getSession().getAttribute("llistaEnquestes");
        if (llistaEnquestes == null) {
            llistaEnquestes = new ArrayList<Enquesta>();
        }
        llistaEnquestes.add(enq);

        request.getSession().setAttribute("llistaEnquestes", llistaEnquestes);
        request.setAttribute("tipusEnquesta", "Enquesta Videojocs");

        System.out.println(enq.getEntrevistat().toString());
        request.setAttribute("enquesta", enq);

        request.getRequestDispatcher("inf-enquesta-videojocs.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
