package service;

import org.json.JSONObject;
import org.json.JSONArray;

import utils.QueryBuilder;
import utils.FileManipulation;
import utils.Request;

public class Extractor {

    public static String queryFromFile(String pathFile) {
        String content = FileManipulation.readFileFromPath(pathFile);
        String[] lines = content.split("\n");

        String query = "";

        //for each line, break tabs (\t)
        boolean firstLine = true;
        for(String string : lines) {
            if(!firstLine) {
                String[] lineContent = string.split("\t");
                query = query + QueryBuilder.buildQueryFromFile(lineContent) + "\n";
            }
            else firstLine = false;
        }
        return query;
    }

    public static String queryFromJSONUrl(String url) {
        JSONObject json = Request.getRequestAsJSONObject(url);
        JSONArray pagamentos = json.getJSONArray("pagamentos");
        JSONArray recebimentos = json.getJSONArray("recebimentos");

        String query = "";

        //for each pagamento in pagamentos
        for(int i = 0; i < pagamentos.length(); i++) {
            JSONObject pagamento = pagamentos.getJSONObject(i);
            query = query + QueryBuilder.buildQueryFromJSON(pagamento) + "\n";
        }

        //for each recebimento in recebimentos
        for(int i = 0; i < recebimentos.length(); i++) {
            JSONObject recebimento = recebimentos.getJSONObject(i);
            query = query + QueryBuilder.buildQueryFromJSON(recebimento) + "\n";
        }

        return query;
    }
}
