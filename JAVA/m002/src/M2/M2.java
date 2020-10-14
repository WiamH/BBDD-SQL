/**02/10/2020
 * @author wiamh
 * excercicis iTAcademy 
 * m2- : El ejercicio consiste en mostrar por consola cuántas veces aparece cada letra 
 * 		 de tu nombre y apellidos con diferentes variantes (fases).
 *       En 4 fases:
 *       			F1.Solicitar nombre y apellido por consola después crear array
 *       			F2.Contar vocales y consonantes
 *       			F3.Contar letras y las veces que aparece
 *       			F4.Aplicar a apellido y fusionar en una sola lista
 */

package M2;

import java.util.Scanner; 


public class M2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
	    
		//F0.Declarar variables
	    String nomicog="";
	    char [] arrCadena;
	    char caracter;
	    int numVegades = 0;
	    
	    //F1.Solicitar nombre y apellido por consola después crear array
	    //F4.Aplicar a apellido y fusionar en una sola lista
	    System.out.println("Introduzca su nombre y primer apellido: ");
	                nomicog = sc.nextLine();
	                arrCadena = nomicog.toCharArray();               
	    
	    //F2.Contar vocales y consonantes
	    String vocals = nomicog.replaceAll("(?i)[^aeiouáéíóúàèìòùâêîôûäëïöü]", ""); int numVocals = vocals.length();
	    	    
	    int numConsonants = nomicog.replaceAll("(?i)[^bcdfghjklmnpqrstvwxyz]", "").length();
	   
	    int numSpaces = nomicog.replaceAll("[^ ]", "").length();
	    	    
	    int resultado = numVocals+numConsonants;
	    	
	    System.out.println("->Total caracteres: " + resultado);
	    System.out.println("-->Vocales: " + numVocals); System.out.println("-->Consonantes: " + numConsonants); System.out.println("-->Espacios: " + numSpaces);
	    
	    //F3.Contar letras y las veces que aparece
	    for (int x=0; x < arrCadena.length; x++) {
	    	caracter = arrCadena[x];
	    	for (int z=0; z < arrCadena.length; z++) {
	    		if (arrCadena[z]== caracter) {
	    			numVegades++;
	    		}		
	    	}

	    	System.out.println(arrCadena[x]+" "+numVegades);
		    		numVegades=0;
	    } 
	}
}
	/* COMENTARIO FINAL: No he utilizado ArrayList para fusionar nombre y apellido,
	 * he solicitado la información por consola */
	
