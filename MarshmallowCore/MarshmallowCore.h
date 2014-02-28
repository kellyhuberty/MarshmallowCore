//
//  MarshmallowCore.h
//  MarshmallowCore
//
//  Created by Kelly Huberty on 2/27/14.
//  Copyright (c) 2014 Kelly Huberty. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "MMDebug.h"
#import "MMInit.h"
#import "MMPreferences.h"
#import "MMSet.h"

/**
 */
#import "MMUtility.h"


/**
 Check whether a file at a given URL has a newer timestamp than a given file.
 Example usage:
 @code
 NSURL *url1, *url2;
 BOOL isNewer = [FileUtils
 isThisFileNewerThanThatFile:url1 thatURL:url2];
 @endcode
 @see http://www.dadabeatnik.com for more information.
 @param thisURL
 The URL of the source file.
 @param thatURL
 The URL of the target file to check.
 @return YES if the timestamp of @c thatURL is newer than the timestamp of @c thisURL,
 otherwise NO.
 */