package shop.database;

import shop.exception.DbException;
import shop.product.Product;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DbController {
    private static DbController ourInstance = new DbController();

    public static DbController getInstance() {
        return ourInstance;
    }

    private Connection conn;

    private DbController() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/shop", "root", "sesame");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }


    public boolean isRegisteredUser(String userLogin, String userPass) throws DbException {
        String login = userLogin.toLowerCase();
        PreparedStatement preparedStmt = null;
        ResultSet rs = null;
        try {
            // the mysql insert statement
            String query = "select Password from user where Email= ?";
            // create the mysql insert preparedStatement
            preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString(1, login);

            // execute the preparedStatement
            rs = preparedStmt.executeQuery();
            if (rs.next()) {
                String pass = rs.getString("Password");
                return pass.equals(userPass);
            } else
                return false;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new DbException();
        } finally {
            closeAll(preparedStmt, rs);
        }
    }

    public boolean isExistsEmail(String emailAddress) throws DbException {
        String email = emailAddress.toLowerCase();
        PreparedStatement preparedStmt = null;
        ResultSet rs = null;
        try {
            // the mysql insert statement
            String query = "select * from user where Email= ?";
            // create the mysql insert preparedStatement
            preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString(1, email);

            // execute the preparedStatement
            rs = preparedStmt.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new DbException();
        } finally {
            closeAll(preparedStmt, rs);
        }
    }

    public boolean insert(String firstName, String emailAddress, String pass1) throws DbException {
        String email = emailAddress.toLowerCase();
        PreparedStatement preparedStmt = null;
        try {
            // the mysql insert statement
            String query = " insert into user (FirstName, Email, Password) values (?, ?, ?)";
            // create the mysql insert preparedStatement
            preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString(1, firstName);
            preparedStmt.setString(2, email);
            preparedStmt.setString(3, pass1);

            // execute the preparedStatement
            preparedStmt.execute();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new DbException();
        } finally {
            closeAll(preparedStmt, null);
        }
    }

    public List<Product> getProducts() {
        List<Product> items = new ArrayList<>();
        Statement statement = null;
        ResultSet rs = null;
        try {
            statement = conn.createStatement();
            rs = statement.executeQuery("select * from Product;");
            while (rs.next()) {
                String id = rs.getString("Id");
                String name = rs.getString("Name");
                double price = rs.getDouble("Price");
                String url = rs.getString("Url");
                items.add(new Product(id, name, price, url));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(statement, rs);
        }
        return items;
    }

    private static void closeAll(Statement st, ResultSet rs) {
        if (st != null)
            try {
                st.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        if (rs != null)
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
    }
}
