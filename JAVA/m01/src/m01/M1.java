/**29/09/2020
 * @author wiamh
 * excercicis iTAcademy 
 * m1- : L�exercici consisteix en crear diferents 
 *       variables i treballar amb elles.
 *       estar� dividido en 4 fases, que fromar�n las clases.
 *       
 *       F1.Variable tipus String
 *       F2.Variable tipus Int
 *       F3.Indicar si el a�o es bisiesto
 *       F.4 Imprimir toda la informaci�n recogida por pantalla.
 */

package m01;

import java.util.Scanner;

public class M1 {
	//Este es el metodo y es el principal de todos los programas en java. 
			//Nunca debe de faltar
	public static void main(String[] args) {
		
        //Invocar un objeto Scanner para ingresar datos desde el teclado.
        Scanner objeto= new Scanner (System.in);
        
        //Declarar las variables nombre de tipo String y Fecha nacimiento de tipo Int
        String nom, app1, app2;
        int any;                   // a�o
        int mes;                     // mes [1,...,12]
        int dia;                // d�a [1,...,31]
        
        //F1: Solicitar nombre y apellidos al suario
        System.out.println("Hola.. Escriu els teus cognoms i nom, si us plau:");
        nom=objeto.nextLine( ); app1=objeto.nextLine( ); app2=objeto.nextLine( );
        
        //F2: Solicitar fecha de nacimiento
        System.out.println("Ahora ingresa fecha nacimiento");
        dia=objeto.nextInt( );mes=objeto.nextInt( );any=objeto.nextInt( );
        if (any < 1900) {
            throw new IllegalArgumentException("A�o inv�lido.");
        } 

        //F4: Esto es el mensaje que se mostrar� por pantalla
        System.out.println ("El meu nom �s " +nom+ " " +app1+" "+app2+ 
        					" Vaig n�ixer " +dia+"/"+mes+"/"+any);
        
      //F3: saber si un a�o es o no bisiesto
        if ((any % 4 == 0) && ((any % 100 != 0) || (any % 400 == 0)))
        	System.out.println("El meu any de naixement �s de trasp�s");
        else
        	System.out.println("El meu any de naixement NO �s de trasp�s");
	}
}
