//
//  Cerdo.h
//  EjemplosFoundation
//
//  Created by Alberto Lobo Muñoz on 09/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cerdo : NSObject

@property (nonatomic) NSInteger patas;
@property (nonatomic, strong) NSString *nombre;

- (id)initWithPatas:(NSInteger)numeroDePatas andNombre:(NSString*)name;

@end
