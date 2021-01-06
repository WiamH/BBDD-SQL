package M2;

public class F3 {
    public static void main(String[] args) {
        //F3.Contar letras y las veces que aparece
        for (int x=0; x < arrCadena.length; x++) {
            caracter = arrCadena[x];
            for (int z=0; z < arrCadena.length; z++) {
                if (arrCadena[z]== caracter) {
                    numVegades++;
                }
            }
            System.out.println("--->Las veces que se repite el caracter "
                    + "(*si sale el numero solo = espacio*): ");
            System.out.println(arrCadena[x]+" "+numVegades);
            numVegades=0;
        }
    }
}

