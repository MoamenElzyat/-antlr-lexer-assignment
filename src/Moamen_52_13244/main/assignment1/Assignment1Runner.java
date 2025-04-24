package Moamen_52_13244.main.assignment1;

import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.Vocabulary;

public class Assignment1Runner {

    public static void tokenStream(String input) {
        Assignment1Lexer lexer = new Assignment1Lexer(CharStreams.fromString(input));
        Vocabulary vocabulary = lexer.getVocabulary();
        String last = "";
        while (true) {
            Token tk = lexer.nextToken();
            last = tk.getText();
            if (last.equals("<EOF>"))
                break;
        }
    }

    public static void main(String[] args) {
        tokenStream("11010");
        tokenStream("101111110");
        tokenStream("0");
        tokenStream("11");
    }
}
