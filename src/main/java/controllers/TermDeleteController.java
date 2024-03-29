package controllers;

import db.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Контроллер удаления семестра
 * */
@WebServlet(name = "TermDeleteController", urlPatterns = "/term-delete")
public class TermDeleteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("idTermToDelete");
        DBManager.deleteTerm(id);
        resp.sendRedirect("/terms");
    }
}