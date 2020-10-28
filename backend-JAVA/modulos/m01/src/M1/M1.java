/**29/09/2020
 * @author wiamh
 * excercicis iTAcademy
 * m1- : El ejercicio consiste en crear diferentes variables y trabajar con ellas.
 *       Este proyecto estará dividido en 4 fases:
 *
 *       F1.Variable tipus String
 *       F2.Variable tipus Int
 *       F3.Indicar si el año es bisiesto
 *       F4. Imprimir toda la información recogida por pantalla.
 */
package M1;

import java.util.Scanner;

public class M1 {
    //Este es el metodo y es el principal de todos los programas en java.
    //Nunca debe de faltar
    public static void main(String[] args) {

        //Invocar un objeto Scanner para ingresar datos desde el teclado.
        Scanner objeto= new Scanner (System.in);

        //Declarar las variables nombre de tipo String y Fecha nacimiento de tipo Int
        String nom, app1, app2;
        int any;                   // año
        int mes;                     // mes [1,...,12]
        int dia;                // día [1,...,31]

        //F1: Solicitar nombre y apellidos al suario
        System.out.println("Hola.. Escriu els teus cognoms i nom, si us plau:");
        nom=objeto.nextLine( ); app1=objeto.nextLine( ); app2=objeto.nextLine( );

        //F2: Solicitar fecha de nacimiento
        System.out.println("Ahora ingresa fecha nacimiento");
        dia=objeto.nextInt( );mes=objeto.nextInt( );any=objeto.nextInt( );
        if (any < 1900) {
            throw new IllegalArgumentException("Año inválido.");
        }

        //F4: Esto es el mensaje que se mostrará por pantalla
        System.out.println ("El meu nom és " +nom+ " " +app1+" "+app2+
                " Vaig néixer " +dia+"/"+mes+"/"+any);

        //F3: saber si un año es o no bisiesto
        if ((any % 4 == 0) && ((any % 100 != 0) || (any % 400 == 0)))
            System.out.println("El meu any de naixement és de traspás");
        else
            System.out.println("El meu any de naixement NO és de traspás");
    }
}


