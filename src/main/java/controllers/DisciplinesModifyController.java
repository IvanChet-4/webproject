package controllers;

import db.DBManager;
import entity.Discipline;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Контроллер изменения выбранной дисциплины
 * */
@WebServlet(name = "DisciplinesModifyController", urlPatterns = "/discipline-modify")
public class DisciplinesModifyController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("idHiddenDisciplineToModify");
        Discipline discipline = DBManager.getDisciplineById(id); // ограничение по количеству выбранных дисциплин в js
        req.setAttribute("discipline", discipline);
        req.getRequestDispatcher("WEB-INF/jsp/discipline-modify.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("idHiddenDisciplineModify"); //id
        String discipline = req.getParameter("disciplines"); //disciplines
        if (discipline.equals("")) {
            req.setAttribute("error", "1");
            req.getRequestDispatcher("WEB-INF/jsp/discipline-mofify.jsp").forward(req, resp);
            return;
        }
        DBManager.modifyDiscipline(id, discipline);
        resp.sendRedirect("/disciplines");
    }
}