package shop.cart;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class CartServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        CartBox cartBox;
        synchronized (session) {
            cartBox = (CartBox) session.getAttribute("cartBox");
            if (cartBox == null) {
                cartBox = new CartBox();
            }


            String itemID = request.getParameter("id");
            if (itemID != null) {
                cartBox.addItem(itemID);
            }
            session.setAttribute("cartBox", cartBox);


            double total = 0;
            for (CartItem shoppingCartItem : cartBox.getCartItems()) {
                total += shoppingCartItem.getTotalCost();
            }
            session.setAttribute("total", total);
        }
    }
}