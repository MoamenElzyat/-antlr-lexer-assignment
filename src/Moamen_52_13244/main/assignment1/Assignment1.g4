/**
@name: Moamen abdelrahman
@id: 52-13244
@tutNumber: 10
*/

lexer grammar Assignment1;

@header {
    import java.util.*;
    import org.antlr.v4.runtime.Token;
}

@lexer::members {
    StringBuilder result = new StringBuilder();
    boolean printed = false;
    boolean infoPrinted = false;

    @Override
    public Token nextToken() {
        if (!infoPrinted) {
            System.out.println("Name: Moamen Abdelrahman");
            System.out.println("ID: 52-13244");
            System.out.println("Tutorial Number: 10");
            System.out.println("------------------------");
            infoPrinted = true;
        }

        Token t = super.nextToken();

        if (!printed && t.getType() == Token.EOF) {
            printed = true;
            if (result.length() > 0 && result.charAt(result.length() - 1) == ';') {
                result.setLength(result.length() - 1);
            }

            System.out.println(result.toString());
        }

        return t;
    }
}

SEGMENT_101 : '101' {
    result.append("101,4;");
};

SEGMENT_OTHER : ('000'|'001'|'010'|'011'|'100'|'110'|'111') {
    String text = getText();
    int sum = 0;
    for (char c : text.toCharArray()) {
        sum += c - '0';
    }
    result.append(text + "," + sum + ";");
};

SEGMENT_SHORT : [01] [01]? {
    result.append(getText() + ",ERROR;");
};

WS : [ \t\r\n]+ -> skip;

fragment DUMMY : ;
