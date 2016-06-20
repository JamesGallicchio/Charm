package charm;

import javax.servlet.*;
import javax.naming.*;  // for JNDI
import javax.sql.*;     // extended JDBC interfaces (such as data sources)
import java.sql.*;      // standard JDBC interfaces
import java.io.*;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

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


    private String item_id_check(String i_input) throws Exception {

        String input = i_input.upperCase();
        ArrayList<String> enchList = new ArrayList<String>(); // Array of enchant abbreviations

        // check if first three letters correspond to an item
        String itemAbbr = input.substring(0, 3); // Get first three letters

        Statement itemStmt = conn.createStatement();
        ResultSet itemCount = itemStmt.executeQuery("select count(*) from ITEM_PRICES where abbr = \'" + itemAbbr + "\'");

        if (itemType.next()) {
            int count = itemType.getInt(1);

            if (count == 0) {
                throw new Exception(); // TODO: custom exception here to say that item is invalid
            }
        }

        itemStmt.close();
        itemCount.close();

        for (int i = 1; i < input.length() / 3; i++) { // Loop through ench abbreviations of ItemID

            // Get ench level of current ench
            String enchAbbr = input.substring(3*i, 3*i+2);
            try {
                int enchantLevel = Integer.parseInt(input.substring(3 * i + 2, 3 * i + 3));
            } catch (NumberFormatException nfe) {
                throw new Exception(); // TODO: custom exception to say something is wrong with ID format
            }

            // Make sure ench level is below max
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select max_level from ENCHANT_INFO where abbr = \'" + enchAbbr + "\'");

            if (rs.next()) {

                if (enchantLevel > rs.getInt(1)) {
                    throw new Exception(); // TODO: custom exception to say that the enchantment level is impossible
                }

            } else {

                throw new Exception(); // TODO: custom exception to say that the enchantment doesn't exist
            }

            // TODO: make sure these run if exceptions get thrown
            rs.close();
            stmt.close();

            // Add enchant name to enchList
            enchList.add(enchAbbr);
        }

        ArrayList<String> possibleNodes = new ArrayList<String>(); // Array of possible starting nodes in item_tree

        // Cycle through enchants in item ID
        for (String ench : enchList) {

            // Put id from nodes with this name in possibleNodes
            Statement nodeStatement = conn.createStatement();
            ResultSet nodes = nodeStatement.executeQuery("select id from ITEM_TREE where abbr = \'" + ench + "\'");

            while (nodes.next()) {
                possibleNodes.add(nodes.getInt(1));
            }

            nodes.close();
            nodeStatement.close();


        }

        // Cycle through possible nodes until find one (if one is found) that works
        for (int nodeId : possibleNodes) {
            int id = nodeId;
            String foundItem;

            ArrayList<String> foundEnchs = new ArrayList<String>();
            while (id != 0) { // Stops when reaches root
                // Get parent of current ID
                Statement idInfoStmt = conn.createStatement();
                ResultSet idInfo = idInfoStmt.executeQuery("select parent, abbr from ITEM_TREE where id = \'" + id + "\'");

                int parentId = idInfo.getInt(1);
                String abbr = idInfo.getString(2);

                // Gets item type of this node-root path
                if (parentId == 0)
                    foundItem = abbr;

                // Add enchant at this node to foundEnchList if name is in enchList
                if (enchList.contains(abbr)
                    foundEnchs.add();
                // Move to parent and repeat
                id = parentId;

                idInfo.close();
                idInfoStmt.close();
            }

            // Check if this is the right path
            if (foundEnchs.size() == enchList.size() && itemAbbr == foundItem) {
                // Loop through found enchants from last to first (closest to root -> closest to node)
                // Constructs new item ID sorted properly
                StringBuilder newItemID = new StringBuilder(itemAbbr);
                for (i = foundEnchs.size() - 1; i > -1; i--) {
                    newItemID.append(foundEnchs.get(i));
                    // Get ench level of original enchant- RegEx woooo
                    String REGEX = "(?:" + foundEnchs.get(i) + ")(.)"; //
                    Pattern pattern = new Pattern.compile(REGEX);
                    Matcher matcher = new pattern.matcher(input);
                    while (matcher.find()) {
                        newItemID.append(matcher.group(1));
                    }
                }
            }
        }

        throw new Exception(); // TODO: Add custom exception to say item not possible, or just return null?

    }

    public void doGet (HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // TODO: Better way to pass values (.. cuz this is temporary)
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
