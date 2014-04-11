//
//  MMTestObject.m
//  MarshmallowCore
//
//  Created by Kelly Huberty on 4/10/14.
//  Copyright (c) 2014 Kelly Huberty. All rights reserved.
//

#import "MMTestObject.h"

@implementation MMTestObject

-(id)init{
    
    self = [super init];
    
    if (self) {
        _values = [[NSMutableDictionary alloc]init];
    }
    
    return self;
    
}


-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
    
    _values[key] = value;
    
}


-(id)valueForUndefinedKey:(NSString *)key{
    
    
    return _values[key];
    
}

@end
