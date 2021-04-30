import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnector {

    private static Connection conn = null;

    public static Connection getCon() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String user = "root";
            String psw = "";
            String url = "jdbc:mysql://localhost:3306?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone = GMT";
            conn = DriverManager.getConnection(url, user, psw);
        } catch (Exception e) {
            System.out.println("Database Connect failed");
            e.printStackTrace();
        }
        return conn;
    }

}
