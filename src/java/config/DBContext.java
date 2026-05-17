package config;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

    private static final String URL      = "jdbc:mysql://localhost:3306/SWP391_Generator_Management"
                                         + "?useSSL=false&serverTimezone=Asia/Ho_Chi_Minh&useUnicode=true&characterEncoding=UTF-8";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";
    private static final String DRIVER   = "com.mysql.cj.jdbc.Driver";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName(DRIVER);
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC driver not found. Add mysql-connector-j.jar to WEB-INF/lib.", e);
        }
    }

    public static void close(AutoCloseable... resources) {
        for (AutoCloseable r : resources) {
            if (r != null) {
                try { r.close(); } catch (Exception ignored) {}
            }
        }
    }

    public static void main(String[] args) {
        System.out.println("Testing connection to: " + URL);
        try (Connection conn = getConnection()) {
            if (conn != null && !conn.isClosed()) {
                System.out.println("✔ Connected successfully!");
                System.out.println("  DB product : " + conn.getMetaData().getDatabaseProductName());
                System.out.println("  DB version : " + conn.getMetaData().getDatabaseProductVersion());
                System.out.println("  URL        : " + conn.getMetaData().getURL());
            }
        } catch (SQLException e) {
            System.err.println("✘ Connection failed: " + e.getMessage());
        }
    }
}

