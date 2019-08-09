package utils;

import java.text.Normalizer;

import org.json.JSONException;
import org.json.JSONObject;

public class QueryBuilder {

    public static String buildQueryFromFile(String... string) {
        String[] values = new String[5];
        values[0] = string[0];
        values[1] = string[1];
        values[2] = "R$";
        values[3] = string[2];
        values[4] = string.length < 4 ? "" : string[3];

        return buildQuery(values);
    }

    public static String buildQueryFromJSON(JSONObject json) {
        String[] values = new String[5];
        values[0] = json.getString("data");
        values[1] = json.getString("descricao");
        //typo moeda - "moeda:"
        try {
            values[2] = json.getString("moeda");
        }
        catch(JSONException e) {
            values[2] = json.getString("moeda:");
        }
        values[3] = json.getString("valor");
        if (json.has("categoria")) values[4] = json.getString("categoria");

        return buildQuery(values);
    }

    private static String buildQuery(String... string) {
        string[3] = string[3].replace(".","");
        string[3] = string[3].replace(",", ".");
        string[3] = string[3].replace(" ", "");
        
        if(Double.valueOf(string[3]) > 0) {
            return "insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('" + dateFormatter(string[0]) + "', 'dd-MM-yyyy'), '" + string[1] + "', '" + string[2] + "', " + string[3] + ");";
        }
        else if (Double.valueOf(string[3]) < 0) {
            return "insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('" + dateFormatter(string[0]) + "', 'dd-MM-yyyy'), '" + string[1] + "', '" + string[2] + "', " + string[3] + ", '" + categoryFormatter(string[4]) + "');";
        }
        else return "";
    }

    private static String dateFormatter(String date) {
        date = date.toLowerCase();
        date = date.replace(" ", "");
        date = date.replace("/", "-");

        //mes nome para mes numero
        date = date.replace("jan", "01");
        date = date.replace("fev", "02");
        date = date.replace("feb", "02");
        date = date.replace("mar", "03");
        date = date.replace("abr", "04");
        date = date.replace("apr", "04");
        date = date.replace("mai", "05");
        date = date.replace("may", "05");
        date = date.replace("jun", "06");
        date = date.replace("jul", "07");
        date = date.replace("ago", "08");
        date = date.replace("aug", "08");
        date = date.replace("set", "09");
        date = date.replace("sep", "09");
        date = date.replace("out", "10");
        date = date.replace("oct", "10");
        date = date.replace("nov", "11");
        date = date.replace("dez", "12");
        date = date.replace("dec", "12");

        //adicionando ano
        date = date + "-2019";

        return date;
    }

    private static String categoryFormatter(String category) {
        category = category.toLowerCase();
        return Normalizer.normalize(category, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "");
    }

}
