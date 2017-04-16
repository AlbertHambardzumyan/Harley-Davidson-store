package shop.register;

import shop.database.DbController;
import shop.exception.DbException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("usernamesignup");
        String emailAddress = request.getParameter("emailsignup");
        String pass1 = request.getParameter("passwordsignup");
        String pass2 = request.getParameter("passwordsignup_confirm");

        if (firstName != null && emailAddress != null && pass1 != null && pass2 != null && !firstName.trim().equals("")
                && !emailAddress.trim().equals("") && !pass1.trim().equals("") && !pass2.trim().equals("")) {

            if (pass1.equals(pass2)) {
                boolean isExistsEmail;
                try {
                    isExistsEmail = DbController.getInstance().isExistsEmail(emailAddress);
                    if (!isExistsEmail) {
                        boolean insertResponse = DbController.getInstance().insert(firstName, emailAddress, pass1);
                        if (insertResponse) {
                            response.sendRedirect("/login.jsp");
                        }
                    } else {
                        response.sendRedirect("/register.jsp");
                    }
                } catch (DbException databaseReadError) {
                    response.sendRedirect("/register.jsp");
                }
            } else {
                response.sendRedirect("/register.jsp");
            }
        } else {
            response.sendRedirect("/register.jsp");
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
