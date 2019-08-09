package service;

import java.util.ResourceBundle;

import utils.Database;
import utils.FileManipulation;

public class Application {

    private static ResourceBundle applicationProperties = ResourceBundle.getBundle("application");

    public static void startup() {
        System.out.println("Starting up...");
        Database.openConnection();
        Database.execute(FileManipulation.readFileFromApplicationProperties("sql.tables"));
        System.out.println("tables up...");
    }

    public static void feedTables() {
        String inserts = Extractor.queryFromFile(applicationProperties.getString("file.input"));
        inserts = inserts + Extractor.queryFromJSONUrl(applicationProperties.getString("json.url"));

        Database.execute(inserts);
    }

    public static void dropdown() {
        System.out.println("Closing h2 connection...");
        Database.closeConnection();
    }
}
