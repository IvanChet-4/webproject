package controllers;

import db.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Контроллер удаления выбранных дисциплин
 * */
@WebServlet(name = "DisciplineDeleteController", urlPatterns = "/disciplines-delete")
public class DisciplineDeleteController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { // Удаление дисциплины
        String ids = req.getParameter("deleteHiddenDiscipline");
        String[] idsToDelete = ids.split(" ");
        for (String id: idsToDelete) {
            DBManager.deleteDiscipline(id);
        }
        resp.sendRedirect("/disciplines");
    }
}