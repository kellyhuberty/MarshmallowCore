//
//  MMSet.h
//  Marshmallow
//
//  Created by Kelly Huberty on 2/10/14.
//  Copyright (c) 2014 Kelly Huberty. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMSet : NSMutableArray{
    
    BOOL _dirty;
    NSMutableArray * _arr;
    NSMutableDictionary * _index;
    NSString * _indexPropertyName;
    
}
@property(nonatomic, retain)NSString * indexPropertyName;


-(void)objectForKey:(id)obj;
//-(void)setObject:(id)obj forKey:(NSObject *)key;

@end
