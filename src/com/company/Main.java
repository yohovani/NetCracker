package com.company;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);
        String data = reader.nextLine();//"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,";
        //Hacemos un Split mediante espacios para separar las palabras que contiene la cadena ingresada
        String[] data_slpit = data.split(" ");
        //La variable longitud nos ayuda a saber la longitud de la cadena
        int longitud = 0;

        for(String split: data_slpit){
            //A longitud se le suma la longitud de la palabra +1 por el espacio
            longitud += split.length()+1;
            //
            if(longitud >= 50){
                //Se valida si longitud menos el espacio final sigue siendo mayor a 50
                if(longitud-1 > 50){
                    //La variable Longitud toma el valor de la longitud de la palabra actual y la palabra actual se imprime en la siguiente linea
                    longitud = split.length();
                    System.out.print("\n"+split+" ");
                }else{
                    //La Variable Longitud toma el valor de la longitud de la palabra actual y la palabra actual se imprime en la linea actual ademas se imprime el salto de linea
                    longitud = 0;
                    System.out.print(split+"\n");
                }
            }else{
                //En caso de no sobrepasar los 50 caracteres se imprime la palabra más un espacio (longitud += split.length()+1)
                System.out.print(split+" ");
            }
        }
    }

}
