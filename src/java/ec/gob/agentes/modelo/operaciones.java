
package ec.gob.agentes.modelo;

import java.util.Arrays;

public class operaciones {

private static int fac;
private static int [] lista;

public static int factorial (int num){
    fac= 1;
    for (int i=1; i <=num; i++){
        fac *=i;
     }
    return fac;
}

public static void dimensionar (int dim){
    lista = new int [dim];
 }

public static void llenarArreglo(){
    for (int i = 0; i < lista.length; i++) {
        lista[i]=(int)(Math.random()*100);
    }
    }
    
public static String imprimir(){
     return Arrays.toString(lista);
 }
 

}
