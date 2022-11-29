package controllers;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Message;
import utils.DBUtil;

/**
 * Servlet implementation class ShowServlet
 */
@WebServlet("/show")
public class ShowServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub

        System.out.println("showservlet1");

        EntityManager em = DBUtil.createEntityManager();

        System.out.println("showservlet2");
        System.out.println(request.getParameter("id"));

        //該当のIDのメッセージを1件受信
        Message m = em.find(Message.class, Integer.parseInt(request.getParameter("id")));

        System.out.println("showservlet3");
        System.out.println(m);

        em.close();
        System.out.println("showservlet4");


        //メッセージデータをリクエストスコープをセット
        request.setAttribute("message", m);

        System.out.println("showservlet5");

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/messages/show.jsp");

        System.out.println("showservlet6");

        rd.forward(request, response);

        System.out.println("showservlet7");

    }

}
