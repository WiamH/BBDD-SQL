package M2;

public class F2 {
    public static void main(String[] args) {
        //F2.Contar vocales y consonantes
        String vocals = nomicog.replaceAll("(?i)[^aeiou��������������������]", ""); int numVocals = vocals.length();

        int numConsonants = nomicog.replaceAll("(?i)[^bcdfghjklmnpqrstvwxyz]", "").length();

        int numSpaces = nomicog.replaceAll("[^ ]", "").length();

        int resultado = numVocals+numConsonants;

        System.out.println("->Total caracteres: " + resultado);
        System.out.println("-->Vocales: " + numVocals);
        System.out.println("-->Consonantes: " + numConsonants);
        System.out.println("-->Espacios: " + numSpaces);
    }
}
