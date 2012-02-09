//
//  EjemplosDeC.m
//  EjemplosFoundation
//
//  Created by Alberto Lobo Muñoz on 09/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

// Declaraciones del preprocesador como #include, #ifdef, etc.
//#include <stdio.h> // Las librerías estándar de C.

#import "EjemplosDeC.h"

@implementation EjemplosDeC

// Declaración de funciones:
static float multiplique(float a, float b){
    // Operadores aritmeticos.
    return a*b;
}

+ (void)ejecutoEjemplosDeC{
    // Tipos de variables primitivos:
    int a = 2;
    float pi = 3.141592;
    char unCaracter = 'z';
    
    // printf y el resto de funciones estándar:
    printf("Los valores de estas variables:\na:%i pi:%f unCaracter:%c \n", a, pi, unCaracter);
    
    // Llamado a funciones.
    float resultado = multiplique(2.0, 3.0);
    printf("Resultado Multiplicacion: %f\n", resultado);
    
    // Arrays y strings:
    int losNumerosDelUnoAlDiez[10] = {1,2,3,4,5,6,7,8,9,10};
    
    float unArrayDeTresNumeros[3];
    unArrayDeTresNumeros[0] = 1.23;
    unArrayDeTresNumeros[1] = pi;
    unArrayDeTresNumeros[2] = -10;
    
    char* lasLetrasDeLaAaLaF = "A B C D E F";
    printf("\nLetras: \nLetra1: %c",lasLetrasDeLaAaLaF[0]);
    printf(" Letra2: %c\n",lasLetrasDeLaAaLaF[2]);
    
    // Condicionales:
    int seraQueSi = 0;
    if(seraQueSi == 1){
        printf("Decide: \n\nQue si!\n");
    }
    else{
        printf("Hmmm... :(\n");
    }
    
    char unaOpcion = 'c';
    switch(unaOpcion){
        case 'a':  
            printf("Escogieron la primera opción\n");
            break;
            
        case 'b':
            printf("Han escogido la opción del medio\n");
            break;
            
        case 'c':
            printf("Bueh, tocó la última\n");
            break;
            
        default:
            printf("No escogieron ningúna opción válida\n");
            break;
    }
    
    
    // Bucles:
    printf("\nAquí va el contenido del array losNumerosDelUnoAlDiez:\n");
    int len = sizeof(losNumerosDelUnoAlDiez) / sizeof(float);
    for(int i=0; i<len; i++){
        printf("%i ", i);
    }
    printf("\n\n");
    
    printf("Cien repeticiones:\n");
    int j = 0;
    while(j < 100){
        printf("%i ",j);
        j++;
    }
    printf("\n\n");
    
    
    // Punteros:
    float *pUnNumero;
    float unNumero = 3.0;
    pUnNumero = &unNumero;
    printf("La dirección del puntero pUnNumero:%p\n", pUnNumero);
    printf("El dato que hay almacenado en pUnNumero:%f\n", *pUnNumero);
    
    printf("\n");
}


@end
