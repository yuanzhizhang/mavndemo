package edu.cd.mvndeno;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/lulu/login")
public class lulu_login extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
//        System.out.println(name + " " + password);
        if (name.equals("zyz") && password.equals("123")){
            req.setAttribute("账号","zyz");
            req.getRequestDispatcher("lulu/succ.jsp").forward(req,resp);
        }
        else{
            req.setAttribute("result","账户或密码错误");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }

        HttpSession session = req.getSession();

    }
}
