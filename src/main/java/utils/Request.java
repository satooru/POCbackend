package utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.json.JSONObject;

public class Request {

    public static JSONObject getRequestAsJSONObject(String url) {

        CloseableHttpClient client = HttpClients.createDefault();

        HttpGet httpGet = new HttpGet(url);

        try {
            CloseableHttpResponse response = client.execute(httpGet);
            String jsonString = inputStreamToString(response.getEntity().getContent());
            //System.out.println(jsonString);
            return new JSONObject(jsonString);

        } catch (IOException e) {
            e.printStackTrace();
        }

        return new JSONObject();
    }

    private static String inputStreamToString(InputStream inputStream) throws IOException {

        StringBuilder stringBuilder = new StringBuilder();
        String line = null;

        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
            while ((line = bufferedReader.readLine()) != null) stringBuilder.append(line);

            return stringBuilder.toString();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }
}
