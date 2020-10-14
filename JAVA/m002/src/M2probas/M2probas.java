package M2probas;

import java.io.IOException;
import java.util.Scanner;

public class M2probas {
	 
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
	    
	    String nomicog = "GÉrmán Martínez";
	    char[] c_arr = nomicog.toCharArray(); // returns a length 4 char array ['l','i','n','e']
	    
	    for (int x=0; x > c_arr.length; x++) {
	    	System.out.println("[" +x+" ]"+ c_arr[x]);
	    }
	    
	    String vocals = nomicog.replaceAll("(?i)[^aeiouáéíóúàèìòùâêîôûäëïöü]", ""); int numVocals = vocals.length();
	    
	    int numConsonants = nomicog.replaceAll("(?i)[^bcdfghjklmnpqrstvwxyz]", "").length();
	    
	    int numSpaces = nomicog.replaceAll("[^ ]", "").length();
	    
	    resultado = numVocals+ numConsonants;
	   
	    System.out.println("Total caracteres: " + resultado);
	    System.out.println("Vocales: " + numVocals); System.out.println("Consonantes: " + numConsonants); System.out.println("Espacios: " + numSpaces);
	
	}
}
