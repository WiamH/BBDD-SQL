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

import java.util.ArrayList;

public class M4F1 {

    public static void main(String[] args) {
        //F1.1.-Crear variable int por cada billete que existe de 5 a 500euros.
        int bill5= 5;
        int bill10= 10;
        int bill20= 20;
        int bill50= 50;
        int bill100= 100;
        int bill200= 200;
        int bill500= 500;

        //F1.2.-Crear 2 arrays, una para el Precio y la otra para el Plato.
        int[] precio= {bill5, bill10, bill20, bill50, bill100, bill200, bill500};

        int precioTotal1= 0;

        String[] nombreplatos = new String[4];

        float[] precioplatos= new float[4];

        ArrayList menu = new ArrayList();

        menu.add("");
        menu.add("");
        menu.add("");
        menu.add("");

    }
}