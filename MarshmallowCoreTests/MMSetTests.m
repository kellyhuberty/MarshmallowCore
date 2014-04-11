//
//  MMSetTests.m
//  MarshmallowCore
//
//  Created by Kelly Huberty on 4/10/14.
//  Copyright (c) 2014 Kelly Huberty. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MMSet.h"
#import "MMUtility.h"
#import "MMTestObject.h"
#import <CoreData/CoreData.h>
@interface MMSetTests : XCTestCase{
    
    MMSet * _set;
    
}

@end

@implementation MMSetTests

- (void)setUp
{
    [super setUp];
    _set = [[MMSet alloc]init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    MMRelease(_set);
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testObjectInsert
{
    
    
    NSObject * al = [[NSObject alloc]init];
    
    [_set addObject:al];
    
    
    XCTAssertEqual([_set count], 1, @"Set Has object");
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (void)testObjectRemove
{
    
    
    NSObject * al = [[NSObject alloc]init];
    
    [_set addObject:al];
    
    [_set removeObject:al];
    XCTAssertEqual([_set count], 0, @"Set Has object");
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (void)testIndex
{
    
    
    MMTestObject * a = [[MMTestObject alloc]init];
    MMTestObject * b = [[MMTestObject alloc]init];
    MMTestObject * c = [[MMTestObject alloc]init];

    
    [a setValue:@1 forKey:@"key"];
    [b setValue:@2 forKey:@"key"];
    [c setValue:@3 forKey:@"key"];

    [_set addIndexForKey:@"key"];

    //[_set addIndexForKey:@"key"];
    
    [_set addObjectsFromArray:@[a, b, c]];
    
    NSArray * array = [_set objectsWithValue:@1 forKey:@"key"];
    
    //[_set addObject:a];
    
    
    MMLog(@"indexes... %@", _set.indexes);
    
    //[_set removeObject:al];
    XCTAssertEqualObjects(array[0], a, @"Set Has object");
    
    
    
    
    
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (void)testMultipleIndex
{
    
    
    MMTestObject * a = [[MMTestObject alloc]init];
    MMTestObject * b = [[MMTestObject alloc]init];
    MMTestObject * c = [[MMTestObject alloc]init];
    
    
    [a setValue:@1 forKey:@"key1"];
    [b setValue:@2 forKey:@"key1"];
    [c setValue:@3 forKey:@"key1"];

    [a setValue:@"1" forKey:@"key2"];
    [b setValue:@"2" forKey:@"key2"];
    [c setValue:@"3" forKey:@"key2"];
    
    [_set addIndexForKey:@"key1"];

    [_set addIndexForKey:@"key2"];

    
    //[_set addIndexForKey:@"key"];
    
    [_set addObjectsFromArray:@[a, b, c]];
    
    NSArray * array = [_set objectsWithValue:@1 forKey:@"key1"];
    
    //[_set addObject:a];
    
    
    MMLog(@"indexes... %@", _set.indexes);
    
    //[_set removeObject:al];
    XCTAssertEqualObjects(array[0], a, @"Set Has object");
    
    
    
    
    
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (void)testMultipleIndexTwoSameValue
{
    
    
    MMTestObject * a = [[MMTestObject alloc]init];
    MMTestObject * b = [[MMTestObject alloc]init];
    MMTestObject * c = [[MMTestObject alloc]init];
    
    
    [a setValue:@1 forKey:@"key1"];
    [b setValue:@1 forKey:@"key1"];
    [c setValue:@3 forKey:@"key1"];
    
    [a setValue:@"1" forKey:@"key2"];
    [b setValue:@"2" forKey:@"key2"];
    [c setValue:@"3" forKey:@"key2"];
    
    [_set addIndexForKey:@"key1"];
    
    [_set addIndexForKey:@"key2"];
    
    
    //[_set addIndexForKey:@"key"];
    
    [_set addObjectsFromArray:@[a, b, c]];
    
    NSArray * array = [_set objectsWithValue:@1 forKey:@"key1"];
    
    //[_set addObject:a];
    
    
    MMLog(@"indexes... %@", _set.indexes);
    
    //[_set removeObject:al];2[
    XCTAssertEqual([array count], 2, @"Set Has object");
    
    
    
    
    
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
