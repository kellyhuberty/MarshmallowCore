//
//  MarshmallowCoreTests.m
//  MarshmallowCoreTests
//
//  Created by Kelly Huberty on 2/27/14.
//  Copyright (c) 2014 Kelly Huberty. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Marshmallow.h"


@interface MarshmallowCoreTests : XCTestCase

@end

@implementation MarshmallowCoreTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStringImplode
{

    NSString * foobar = [NSString implode:@[@"foo", @"bar"] glue:@""];

    BOOL test = [foobar isEqualToString:@"foobar"];
    
    XCTAssertTrue(test, @"testStringImplode %@", foobar);
}


- (void)testStringImplodeWithGlue
{
    
    NSString * foobar = [NSString implode:@[@"foo", @"bar"] glue:@":"];
    
    BOOL test = [foobar isEqualToString:@"foo:bar"];
    
    XCTAssertTrue(test, @"testStringImplode %@", foobar);

}

@end
