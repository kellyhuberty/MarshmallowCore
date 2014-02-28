//
//  MMSet.m
//  Marshmallow
//
//  Created by Kelly Huberty on 2/10/14.
//  Copyright (c) 2014 Kelly Huberty. All rights reserved.
//

#import "MMSet.h"

@implementation MMSet

#pragma mark init Overides

- (id)init
{
    self = [super init];
    if (nil == self){
        return nil;
    }
    _arr = [NSMutableArray new];
    _dict = [NSMutableDictionary new];
    return self;
}



#pragma mark NSArray Overides
-(int)count{
    
    return [_arr count];
    
}

-(id)objectAtIndex:(NSUInteger)index{
    
    
    return [_arr objectAtIndex:index];
    
}


#pragma mark NSMutableArray Overides
- (void)insertObject:(id)anObject atIndex:(NSUInteger)index{
    
    [_arr insertObject:anObject atIndex:index];
    
}


- (void)removeObjectAtIndex:(NSUInteger)index{
    
    
    [_arr removeObjectAtIndex:index];
    
    
}

- (void)addObject:(id)anObject{

    [_arr addObject:anObject];

}


- (void)removeLastObject{
    
    
    [_arr removeLastObject];
    
    
    
}

- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject{
    
    [_arr replaceObjectAtIndex:index withObject:anObject];
    
}



@end
