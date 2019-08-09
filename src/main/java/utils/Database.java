package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

public class Database {

    static Connection connection;

    public static boolean openConnection() {
        try {
            if (connection == null || connection.isClosed()) {
                Class.forName("org.h2.Driver");
                connection = DriverManager.getConnection("jdbc:h2:mem:testdb", "sa", ""); 
            }
            return true;
        }
        catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean execute(String query) {
        try {
            openConnection();
            Statement statement = connection.createStatement();
            return statement.execute(query);
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static String executeQuery(String query) {
        return query(query);
    }

    public static void executeQuery(String query, String outputPath) {
        try {
            FileManipulation.writeToFile(outputPath, query(query));
        }
        catch(Exception e) {
            System.out.println("Não foi possível gerar arquivo de saída. output: " + outputPath);
            e.printStackTrace();
        }
    }

    private static String query(String query) {
        try {
            openConnection();
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(query);
            return processResultSet(query, result);
        }
        catch(Exception e) {
            e.printStackTrace();
            return "Erro: " + e.getMessage();
        }
    }

    public static boolean closeConnection() {
        try {
            connection.close();
            return true;
        }
        catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private static String processResultSet(String query, ResultSet result) {

        String output = "";

        try {
            ResultSetMetaData meta = result.getMetaData();
            output += "Query:\n" + query + "\n";
            output += "Result:\n"; 
            while(result.next()) {
                output += "-------------------\n";
                for(int i = 1; i <= meta.getColumnCount(); i++) {
                    output += meta.getColumnName(i) + ": " + result.getString(i) + "\n";
                }
            }
            output += "-------------------\n";
            System.out.println(output);
        }
        catch(Exception e) {
            e.printStackTrace();
            output = e.getMessage();
        }
        return output; 
    }
}
