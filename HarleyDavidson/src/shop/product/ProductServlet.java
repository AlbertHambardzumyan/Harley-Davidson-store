package shop.product;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ProductServlet extends HttpServlet {
    private List<Product> products = ProductBox.getProductItems();


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (products == null) {
            response.sendError(response.SC_NOT_FOUND, "Missing Product.");
            return;
        }
System.out.println(products.toString());
        request.getSession().setAttribute("products", products);

    }
}
