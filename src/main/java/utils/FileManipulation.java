package utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ResourceBundle;

public class FileManipulation {

    public static String readFileFromApplicationProperties(String key) {
        ResourceBundle applicationProperties = ResourceBundle.getBundle("application");
        return readFile(applicationProperties.getString(key));
    }

    public static String readFileFromPath(String path) {
        return readFile(path);
    }

    private static String readFile(String filename) {

        try {
        	Path path = Paths.get(System.getProperty("user.dir"), filename.split("\\\\"));
        	
            BufferedReader bufferedReader = new BufferedReader(new FileReader(path.toAbsolutePath().toString()));
            StringBuilder sb = new StringBuilder();
            String line;

            //Dados
            while ((line = bufferedReader.readLine()) != null) sb.append(line+"\n");

            bufferedReader.close();
            return sb.toString();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    public static void writeToFile(String filepath, String content) throws IOException{
        Path path = Paths.get(System.getProperty("user.dir"), filepath.split("\\\\"));
        if (!Files.exists(path.getParent())) path.getParent().toFile().mkdirs();
        BufferedWriter writer = new BufferedWriter(new FileWriter(filepath));
        writer.write(content);
        writer.close();
    }
}
