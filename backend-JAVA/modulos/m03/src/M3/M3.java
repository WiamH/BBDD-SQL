/**13/10/2020
 * @author wiamh
 * excercicis iTAcademy
 * m3- : El ejercicio consiste en mostrar por consola diferentes nombres de ciudades partiendo
 * 		 de un array y modificar los nombres cambiando letras. En diferentes 4 fases:
 *       			F1.Crear 6 variables
 *       			F2.Pasar a Array la 6 variables anteriores
 *       			F3.Cambiar caracter "a" por 4
 *       			F4.Invertir el orden de las variables (Ex: Barcelona - anolecraB)
 */

package M3;

import java.util.Scanner;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.HashMap;

public class M3 {
    public static void main(String[] args) {

        //F0.Declarar Variables
        String[] arrCity = new String[6];
        ArrayList<String> ciudades = new ArrayList<String>();
        HashMap<String, String> ciudadesMap = new HashMap();
        Scanner sc = new Scanner(System.in);

        //F1.Solicitar las 6 variables
        for (int i = 0; i < 6; i++) {
            System.out.println("Introduce una ciudad " + (i + 1) + " : ");
            arrCity[i] = sc.nextLine();
            ciudades.add(arrCity[i]);
        }


        //F2.Pasar a Lista la 6 variables anteriores
        System.out.println("Las ciudades indtroducidas son: " + Arrays.toString(arrCity));

        //F3.Cambiar caracter "a" por 4
        ciudadesMap = new HashMap();
        for (int x = 0; x < ciudades.size(); x++) {
            ciudadesMap.put(arrCity[x], ciudades.get(x).replace('a', '4'));
        }

        System.out.println("-->Convertir 'A' en '4'; utilizando HashMap: " + ciudadesMap.toString());


        //F4.Invertir el orden de las variables (Ex: Barcelona - anolecraB)
        for (int i = 0; i < arrCity.length; i++) {
            String temp;
            char[] citiesMod = new char[arrCity[i].length()];
            char[] city = arrCity[i].toCharArray();
            temp = ciudadesMap.get(arrCity[i]);
            city= temp.toCharArray();
            for (int x = 0; x < city.length; x++) {
                citiesMod[x] = city[city.length - x - 1];
            }
            temp=String.valueOf(citiesMod);
            ciudadesMap.put(arrCity[i], temp);
        }
        System.out.print("--->Ciudades Orden Inverso "+ ciudadesMap.toString());

    }
}
