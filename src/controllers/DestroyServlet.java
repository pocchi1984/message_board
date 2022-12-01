package controllers;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Message;
import utils.DBUtil;

/**
 * Servlet implementation class DestroyServlet
 */
@WebServlet("/destroy")
public class DestroyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DestroyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        String _token = request.getParameter("_token");

        System.out.println("token"+_token);
        System.out.println(request.getSession().getId());


        if (_token != null && _token.equals(request.getSession().getId())) {
            EntityManager em = DBUtil.createEntityManager();

            Message m = em.find(Message.class, (Integer) (request.getSession().getAttribute("message_id")));

            System.out.println("destroy1");
            em.getTransaction().begin();
            em.remove(m);

            System.out.println("destroy2");


            em.getTransaction().commit();
            request.getSession().setAttribute("flush", "削除が完了しました");
            em.close();

            System.out.println("destroy3");


            request.getSession().removeAttribute("message_id");

            System.out.println("destroy4");
            System.out.println(request.getContextPath()+"/index");

            response.sendRedirect(request.getContextPath() + "/index");

        }

    }

}
