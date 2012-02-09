//
//  NSString+IsEmpty.m
//  EjemplosFoundation
//
//  Created by Alberto Lobo Muñoz on 09/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSString+IsEmpty.h"

@implementation NSString (IsEmpty)

-(BOOL)isEmpty{
    NSString* trimmed = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return [trimmed length]==0;
}

@end
