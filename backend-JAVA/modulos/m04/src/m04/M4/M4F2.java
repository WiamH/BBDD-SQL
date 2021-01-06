/**2/11/2020
 * @author wiamh
 * excercicis iTAcademy
 * m4- : El ejercicio consiste en mostrar por consola uan carta de restaurante a la cual
 *       le anyadiremos platos y despues escoger el que queremos comer.
 *       F1.1.-Crear variable int por cada billete que existe de 5 a 500euros.
 *       F1.2.-Crear 2 arrays, una para el Precio y la otra para el Plato.
 *       F2.1.-Bucle For para rellenar las arrays Plato y Precio.
 *       F2.2.-Mostrar los arrays rellenados, solicitar que escoja plato y guardar info
 *             en List utilizando While.
 *       F3.1.-Mostrar precio total y verificar si el plato esta en la lista o no en caso
 *              de no estar en la lista mostrar aviso.
 */

package m04.M4;

import java.util.HashMap;
import java.util.Scanner;

public class M4F2 {
    public static void main(String[] args) {
        //F2.1.-Bucle For para rellenar las arrays Plato y Precio.
        HashMap<String, Integer> platos = new HashMap<String, Integer>();
        System.out.println ("-*-*-*-MENU RESTAURANTE-*-*-*-");
        System.out.println ("-->Creación del menú: " );
        for (int i=0; i<4; i++) {

            int preu;
            String plato;

            Scanner sc= new Scanner (System.in);

            System.out.println ("Inserte NOMBRE del plato: ");
            plato= sc.nextLine();

            System.out. println ("Inserte PRECIO del plato: ");
            preu= sc.nextInt();

            platos.put(plato, preu);

        }

        //F2.2-Mostrar
        System.out.println ("-->La carta final es la siguiente: " );

        for (String i : platos.keySet()) {

            System.out.println(i + ": "+platos.get(i)+"€");

        }
    }
}
