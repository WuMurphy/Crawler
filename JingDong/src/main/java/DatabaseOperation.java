import java.lang.ref.PhantomReference;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DatabaseOperation {

    private static DatabaseOperation instance = new DatabaseOperation();

    public static DatabaseOperation getInstance() {return instance;}

    private DatabaseOperation() {}

    /**
     * Add data into the database
     * @param cont the data
     * @return result: add successful or fail
     */
    public static boolean saveContent(Content cont, String tableName) {
        boolean result = false;
        Connection conn = null;
        try {
            conn = DatabaseConnector.getCon();
            String sqlInsert;
            if (tableName.equals("mmb_item")) {
                sqlInsert = "insert into cpt202."+tableName+"(brand, title, price, pic, url, mall) values(?, ?, ?, ?, ?, ?)";
            } else {
                sqlInsert = "insert into cpt202."+tableName+"(brand, title, price, pic, url) values(?, ?, ?, ?, ?)";

            }
            PreparedStatement stmt = conn.prepareStatement(sqlInsert);

            // set value of every ? above
            stmt.setString(1, cont.getBrand());
            stmt.setString(2, cont.getTitle());
            stmt.setString(3, cont.getPrice());
            stmt.setString(4, cont.getImg());
            stmt.setString(5, cont.getLinkurl());
            if (tableName.equals("mmb_item")) {
                stmt.setString(6, cont.getMall());
            }
            int i = stmt.executeUpdate();
            if (i == 1) {
                result = true;
            }
        } catch (Exception e){
            //TODO Auto-genetated catch block
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    /**
     * check whether the content is in the table
     * @param cont the content object to check
     * @return result: exits or not
     */
    public static boolean checkExistence(Content cont, String tableName) {
        String linkurl = cont.getLinkurl();
        boolean result = false;
        Connection conn = null;
        try {
            conn = DatabaseConnector.getCon();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from cpt202."+tableName+" where url=" + "'"+linkurl+"'");
            if (rs.next()) {result = true;}

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        return result;
    }

}