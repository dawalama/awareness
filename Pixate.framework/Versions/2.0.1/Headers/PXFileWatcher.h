//
//  PXFileWatcher
//  Pixate
//
//  Created by Paul Colton on 9/27/12.
//  Copyright (c) 2012 Pixate, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  PXFileWatcher can be used to monitor changes to a file in the file system.
 */
@interface PXFileWatcher : NSObject

/**
 *  The singleton instance of PXFileWatcher
 */
+ (PXFileWatcher *)sharedInstance;

/**
 *  Turn on file monitoring and report changes to the specified handler
 *
 *  @param filePath The local file to monitor
 *  @param handler The callback to invoke when changes are detected
 */
- (void) watchFile:(NSString *)filePath handler:(dispatch_block_t)handler;

@end
