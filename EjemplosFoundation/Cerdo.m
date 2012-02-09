//
//  Cerdo.m
//  EjemplosFoundation
//
//  Created by Alberto Lobo Muñoz on 09/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Cerdo.h"

//Ejemplo de Extension: Permite declarar elementos solo para el ambito de ese modulo (en este caso es el archivo .m)
//Suelen usarse para definir metodos privados para todo el modulo, si quitas esta definicion, init no puede llamar a grunha
@interface Cerdo()
- (void)grunha;
@end

@implementation Cerdo

@synthesize patas, nombre;

- (id)init {
    //Inicializador de conveniencia
    //Llama al inicializador mas especifico de su propia clase
    self = [self initWithPatas:0 andNombre:@""];
    if (self) {
        [self grunha];
    }
    return self;
}

- (id)initWithPatas:(NSInteger)numeroDePatas andNombre:(NSString*)name {
    //Inicializador de maxima genericidad: mas especifico
    //Llama a super para asegurarse que las variables de instancia del padre se inicialicen
    self = [super init];
    if (self) {
        [self setPatas:numeroDePatas];
        [self setNombre:name];
        [self grunha];
    }
    return self;
}

- (void)grunha{
    NSLog(@"GRRRRRRRFFFFFFFF");
}

@end
