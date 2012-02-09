//
//  EjemplosObjectiveC.m
//  EjemplosFoundation
//
//  Created by Alberto Lobo Muñoz on 09/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EjemplosObjectiveC.h"
#import "NSString+IsEmpty.h"
#import "Cerdo.h"
#import "Pajaro.h"

@implementation EjemplosObjectiveC

- (void)ejecutoEjemploDeObjectiveC {
    
    // La función NSLog es equivalente a printf en programas de línea de comandos pero
    // en aplicaciones con interfaz gráfica para MacOS o iOS, es capaz de escribir en el sistema
    NSLog(@"***************************EJEMPLOS OBJECTIVE C**************************\nSaludos!");
    
    // NSString:
    // http://developer.apple.com/library/mac/#documentation/cocoa/Reference/Foundation/Classes/NSString_Class/Reference/NSString.html
    //
    NSString* unString = @"Esta Frase se concatena con la cadena ";
    NSLog(@"%@",unString);
    
    int i = 3;
    NSString* otroString = [NSString stringWithFormat:@"El entero ese de arriba vale %i", i];
    NSLog(@"%@",otroString);
    
    NSString* otroStringConDistintoInit = [[NSString alloc] initWithFormat:@"El entero ese de arriba sigue valiendo %i", i];
    NSLog(@"%@",otroStringConDistintoInit);
    
    NSString* otroStringMas = [unString stringByAppendingString:otroString];
    NSLog(@"%@",otroStringMas);
    
    
    // NSNumber encapsula los tipos numericos primitivos de C en objetos de
    // Objective-C con el fin de que puedan interactuar con otros objetos del framework,
    // por ejemplo, ser agregados a NSArrays.
    // http://developer.apple.com/library/mac/#documentation/cocoa/Reference/Foundation/Classes/NSNumber_Class/Reference/Reference.html
    NSNumber* unNumeroEntero = [NSNumber numberWithInt:3];
    NSNumber* unNumeroDePuntoFlotante = [NSNumber numberWithFloat:3.141592];
    NSNumber* unBooleano = [NSNumber numberWithBool:YES];
    NSLog(@"El entero:%i, el flotante:%f y el booleano:%i", [unNumeroEntero intValue], [unNumeroDePuntoFlotante floatValue], [unBooleano boolValue]);
    
    // NSArray
    // http://developer.apple.com/library/mac/#documentation/Cocoa/Reference/Foundation/Classes/NSArray_Class/NSArray.html
    NSArray* unArrayConStrings = [NSArray arrayWithObjects:@"Uno", @"Dos", @"Tres", nil];
    NSLog(@"%@", unArrayConStrings);
    
    NSArray* unArrayMezcladito = [NSArray arrayWithObjects:unNumeroDePuntoFlotante, otroString, nil];
    for(id objeto in unArrayMezcladito){
        NSLog(@"%@",objeto);
    }
    
    NSMutableArray* mutable = [NSMutableArray array];
    [mutable addObject:@"Uno"];
    [mutable addObject:[NSNumber numberWithInt:2]];
    [mutable addObject:[NSNumber numberWithFloat:3.14159]];
    [mutable removeObjectAtIndex:2];
    NSLog(@"%@",mutable);
    
    
    // NSDictionary: parecido a vuestro hashmap
    // http://developer.apple.com/library/mac/#documentation/Cocoa/Reference/Foundation/Classes/NSDictionary_Class/Reference/Reference.html
    NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"Valor 1", @"Clave 1",
                          [NSNumber numberWithFloat:2.0], @"Clave 2",
                          nil];
    id valor = [dict objectForKey:@"Clave 1"];
    NSLog(@"El valor: %@",valor);
    
    NSMutableDictionary* mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setObject:@"Un Valor" forKey:@"clave1"];
    [mutableDict setObject:@"Otro Valor" forKey:@"clave1"];
    valor = [mutableDict valueForKey:@"clave1"];
    NSLog(@"El valor: %@",valor);
    
    
    /******************************* CLASES ***********************************/
    //Implementar cerdo con 4 patas y con un nombre, el cerdo al nacer gruñeeeeeeeee
    //Implementar pajaro con 2 patas y con un nombre
    NSLog(@"El Cerdo Nace");
    Cerdo *unCerdito = [[Cerdo alloc] initWithPatas:4 andNombre:@"Cerdito Valiente"];
    NSLog(@"El Cerdo se llama: %@", unCerdito.nombre);
    Pajaro *unPajarito = [[Pajaro alloc] initWithNombre:@"Calimero"];
    NSLog(@"El Pajaro se llama: %@", unPajarito.nombre);
    
    
    /******************************* AVANZADOS ***********************************/
    
    //Ejemplo de Categoria: Permite añadir metodos a cualquier clase, incluso sin tener acceso a su archivo de implementacion
    //Permite dividir la implementacion de las clases para varios programadores
    //No usar para sobreescribir metodos!
    NSString* unaString = @" ";
    if([unaString isEmpty]){
        NSLog(@"La categoria dice que la cadena esta vacia!");
    }    
    
    //Ejemplo de Protocolo: Declaran metodos que puede implementar cualquier clase
    //Relacionan clases no jerárquicas, un protocolo puede implementar otro protocolo
    //Similar concepto interfaz de JAVA
    //El Pajarito canta, pero el cerdo no, puede que en un futuro haya mas animales que canten, pero cada uno canta de forma distinta
    NSLog(@"El pajaro Canta");
    [unPajarito canta];
    
//    [unCerdito canta];No Canta! Dara error!
    
}
    
@end
