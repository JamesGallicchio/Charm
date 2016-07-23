package charm;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.naming.*;  // for JNDI
import javax.sql.*;     // extended JDBC interfaces (such as data sources)
import java.sql.*;      // standard JDBC interfaces
import java.io.*;

public class DatabaseTest extends HttpServlet {

  DataSource ds = null;
  Connection conn = null;

  public void init() throws ServletException {
    try {
      InitialContext ic = new InitialContext();  // JNDI initial context
      Context env = (Context) ic.lookup("java:/comp/env/");
      ds = (DataSource) env.lookup("jdbc/test"); // JNDI lookup
      conn = ds.getConnection();  // database connection through data source
    }
    catch (SQLException se) {
      throw new ServletException(se);
    }
    catch (NamingException ne) {
      throw new ServletException(ne);
    }
  }

  public void doGet (HttpServletRequest req, HttpServletResponse resp)
                     throws ServletException, IOException {

    String query = "select id, first, last, age from Employees ";

    resp.setContentType("text/html");

    PrintWriter out = resp.getWriter();
    out.println("<html>");
    out.println("<head><title>SELECT in Java</title></head>");
    out.println("<body>");

/* Create a JDBC statement object, execute the query, and set up     */
/* HTML table formatting for the output.                             */
    try {
      Statement stmt = conn.createStatement();
      ResultSet rs = stmt.executeQuery(query);

        out.println("<table border=1 width=100%>");
        out.println("<tr><th>Emp ID</th><th>First Name</th><th>Last Name</th><th>Age</th></tr>");

/* Loop through the results. Use the ResultSet getString() and       */
/* getInt() methods to retrieve the individual data items.           */
        int count=0;
        while (rs.next()) {
         count++;
         out.println(
            "<tr><td>" + rs.getInt(1) +
                "</td><td>" + rs.getString(2) +
                "</td><td>" + rs.getString(3) +
                "</td><td>" + rs.getInt(4) +
                "</td></tr>");
       
        }
         out.println("</table>"); 
         out.println("<h3>" + count + " rows retrieved</h3>");

        
      rs.close();
      stmt.close();
    }
    catch (SQLException se) {
      se.printStackTrace(out);
    }

    out.println("</body></html>");
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
