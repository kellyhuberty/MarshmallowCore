//
//  MMVersionStringTests.m
//  Pods
//
//  Created by Kelly Huberty on 7/4/14.
//
//

#import <XCTest/XCTest.h>
#import "MMVersionString.h"
@interface MMVersionStringTests : XCTestCase

@end

@implementation MMVersionStringTests

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

- (void)testVersionStringCompare
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    MMVersionString * low = [MMVersionString stringWithString:@"1.2.3"];
    MMVersionString * high = [MMVersionString stringWithString:@"1.2.7"];

    XCTAssertTrue(([low compareVersion:high] == NSOrderedAscending)  , @"testVersionStringCompare");
    
    

}

- (void)testMajor
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    MMVersionString * low = [MMVersionString stringWithString:@"1.2.3"];
    MMVersionString * high = [MMVersionString stringWithString:@"1.2.7"];
    
    XCTAssertTrue((low.major == 1)  , @"testVersionStringCompare");
    
    
    
}

- (void)testMinor
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    MMVersionString * low = [MMVersionString stringWithString:@"1.2.3"];
    MMVersionString * high = [MMVersionString stringWithString:@"1.2.7"];
    
    XCTAssertTrue((low.minor == 2)  , @"testVersionStringCompare");
    
    
    
}

- (void)testMaintenance
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    MMVersionString * low = [MMVersionString stringWithString:@"1.2.3"];
    MMVersionString * high = [MMVersionString stringWithString:@"1.2.7"];
    
    XCTAssertTrue((low.maintenance == 3)  , @"testVersionStringCompare");
    
    
    
}

@end
