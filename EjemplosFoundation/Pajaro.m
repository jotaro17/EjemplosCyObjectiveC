//
//  Pajaro.m
//  EjemplosFoundation
//
//  Created by Alberto Lobo Muñoz on 09/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Pajaro.h"

@implementation Pajaro

@synthesize nombre;

- (id)initWithNombre:(NSString*)name {
    self = [super init];
    if (self) {
        [self setNombre:name];
    }
    return self;
}

- (void)canta{
    NSLog(@"Tirururirururiiiiiiiiiiiiiii");
}

@end
