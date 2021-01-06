package m04.M4;
/*2/11/2020
  @author wiamh
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

import jdk.internal.access.JavaIOFileDescriptorAccess;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class M4F3 {
    public static void main(String[] args) {
        //F3.Escoger
        int seguir = 1;
        List<String> platoPedido = new ArrayList<>();

        while (seguir == 1) {

            try {
                System.out.println ("-->Realizar pedido:" );
                Scanner decidir = new Scanner (System.in);
                System.out.println ("Escribe el plato a pedir:" );
                platoPedido.add(decidir.nextLine());

                System.out.println ("¿Qué desea hacer? 1:Seguir 0:Salir" );
                seguir = decidir.nextInt();
            }
            catch(Exception e) {
                System.out.println ("Lo sentimos, ese plato no está en nuestro menú." );
                seguir = 0;
            }

        }

        float precioTotal2= 0;
        for (String s : platoPedido) {

            try {

                JavaIOFileDescriptorAccess platos = null;
                precioTotal2 += platos.get(s);
                System.out.println(s);
            } catch (Exception e) {
                System.out.println("El producto seleccionado no existe");
            }

        }
        System.out.println ("-->Final de compra" );
        System.out.println("Precio total: " + precioTotal2+"€");

    }
}

