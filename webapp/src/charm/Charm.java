package charm;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.naming.*;  // for JNDI
import javax.sql.*;     // extended JDBC interfaces (such as data sources)
import java.sql.*;      // standard JDBC interfaces
import java.io.*;

public class Charm extends HttpServlet {

  DataSource ds = null;
  Connection conn = null;

  public void init() throws ServletException {
    try {
      InitialContext ic = new InitialContext();  // JNDI initial context
      Context env = (Context) ic.lookup("java:/comp/env/");
      ds = (DataSource) env.lookup("jdbc/charm"); // JNDI lookup
      conn = ds.getConnection();  // database connection through data source
    }
    catch (SQLException se) {
      throw new ServletException(se);
    }
    catch (NamingException ne) {
      throw new ServletException(ne);
    }
  }
  

  private String item_id_check(String input) throws Exception {
      for (int i = 0; i < input.length() / 3; i++) {
        if (i == 0) {
            // check if first three letters correspond to an item
            String item = input.substring(0, 3);
        
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select count(*) from ITEM_PRICES where abbr = \'" + item + "\'");
            
            if (rs.next()) {
                int count = rs.getInt(1);

                if (count == 0) {
                    throw new Exception(); // TODO: custom exception here to say that item is invalid
                }
            }
            
            rs.close();
            stmt.close();
        } 
        else {
            String enchant = input.substring(3*i, 3*i+2);
            int enchantLevel = Integer.parseInt(input.substring(3*i+2, 3*i+3)); // TODO: handle not being an int;
        
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select name, max_level from ENCHANT_INFO where abbr = \'" + enchant + "\'");
            
            if (rs.next()) {
                String full_name = rs.getString(1);
                int maxEnchant = rs.getInt(2);
                
                if (enchantLevel > maxEnchant) {
                    throw new Exception(); // TODO: custom exception to say that the enchantment level is wrong
                }
                
            } else {
                throw new Exception(); // TODO: custom exception to say that the enchantment doesn't exist
            }
            
            // TODO: make sure these run if exceptions get thrown
            rs.close();
            stmt.close();
            
        }
     }


     return input;
  }

  public void doGet (HttpServletRequest req, HttpServletResponse resp)
                     throws ServletException, IOException {
    
    String queryVal = req.getParameter("id");

    resp.setContentType("text/plain");
    PrintWriter out = resp.getWriter();    

    try {
        String itemid = item_id_check(queryVal);
        out.println(itemid);
    }
    catch (SQLException se) {
        se.printStackTrace(out);
    }
    catch (Exception e) {
        e.printStackTrace(out);
    }

  }

  public void destroy() {
    try {
      conn.close();
    }
    catch (SQLException se) {
      se.printStackTrace();
    }
  }
}
