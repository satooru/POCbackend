package main;

import service.Application;
import utils.Database;
import utils.FileManipulation;

public class Runner {
    public static void main(String[] args) {

        Application.startup();
//        Application.feedTables();

        // Tasks
        //   **exibir o log de movimentações de forma ordenada;
        Database.executeQuery(FileManipulation.readFileFromApplicationProperties("challenge1"), "output\\challenge1.txt");

        //   **informar o total de gastos por categoria;
        Database.executeQuery(FileManipulation.readFileFromApplicationProperties("challenge2"), "output\\challenge2.txt");

        //   **informar qual categoria cliente gastou mais;
        Database.executeQuery(FileManipulation.readFileFromApplicationProperties("challenge3"), "output\\challenge3.txt");

        //   **informar qual foi o mês que cliente mais gastou;
        Database.executeQuery(FileManipulation.readFileFromApplicationProperties("challenge4"), "output\\challenge4.txt");

        //   **quanto de dinheiro o cliente gastou;
        Database.executeQuery(FileManipulation.readFileFromApplicationProperties("challenge5"), "output\\challenge5.txt");

        //   **quanto de dinheiro o cliente recebeu;
        Database.executeQuery(FileManipulation.readFileFromApplicationProperties("challenge6"), "output\\challenge6.txt");

        //   **saldo total de movimentações do cliente.
        Database.executeQuery(FileManipulation.readFileFromApplicationProperties("challenge7"), "output\\challenge7.txt");

        Application.dropdown();
    }
}
