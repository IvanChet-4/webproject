package controllers;

import db.DBManager;
import entity.Discipline;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Контроллер создания новой дисциплины
 * */
@WebServlet(name = "DisciplinesCreateController", urlPatterns = "/disciplines-create")
public class DisciplinesCreateController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList < Discipline > disciplines = DBManager.getAllActiveDisciplines();
        req.setAttribute("disciplines", disciplines);
        req.getRequestDispatcher("WEB-INF/jsp/disciplines-create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String disciplines = req.getParameter("disciplines");
        if (disciplines == null || disciplines.equals("")) {
            req.setAttribute("error", "1");
            req.getRequestDispatcher("WEB-INF/jsp/disciplines-create.jsp").forward(req, resp);
            return;
        }
        DBManager.createDisciplines(disciplines);
        resp.sendRedirect("/disciplines");
    }
}