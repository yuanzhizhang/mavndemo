package edu.cd.mvndeno;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginIn extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        if (name.equals("zyz") && password.equals("123")) {
            req.setAttribute("name", "zyz");
            req.getRequestDispatcher("admin.jsp").forward(req, resp);
        } else {
            req.setAttribute("result", "账户或密码错误");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
