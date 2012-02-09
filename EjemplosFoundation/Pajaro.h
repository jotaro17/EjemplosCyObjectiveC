//
//  Pajaro.h
//  EjemplosFoundation
//
//  Created by Alberto Lobo Muñoz on 09/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cantar.h"

@interface Pajaro : NSObject <Cantar>

@property (nonatomic, strong) NSString *nombre;

- (id)initWithNombre:(NSString*)name;

@end
