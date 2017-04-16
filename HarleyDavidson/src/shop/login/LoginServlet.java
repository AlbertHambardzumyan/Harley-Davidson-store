package shop.login;

import shop.database.DbController;
import shop.exception.DbException;
import shop.user.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userLogin = request.getParameter("username");
        String userPass = request.getParameter("password");


        if (userLogin != null && userPass != null && !userLogin.trim().equals("") && !userPass.trim().equals("")) {
            boolean isRegisteredUser;
            try {
                isRegisteredUser = DbController.getInstance().isRegisteredUser(userLogin, userPass);
                if (isRegisteredUser) {
                    User user = new User(null, null, userLogin, null, null);
                    request.getSession().setAttribute("user", user);
                    response.sendRedirect("");
                } else {
                    response.sendRedirect("/login.jsp");
                }
            } catch (DbException databaseReadError) {
                response.sendRedirect("/login.jsp");
            }

        } else {
            response.sendRedirect("/login.jsp");

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
