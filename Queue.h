//
//  Queue.h
//  AccelerometerGraph
//
//  Created by Lê Vũ Hải on 9/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject{
    NSMutableArray *queueArray;
    NSInteger capacity;
}

// Constructor
- (id)initWithQueueSize:(NSInteger)size;

- (id) dequeue;
- (id) objectAtIndex:(int)index;
- (int) contains:(id)object;
- (void) enqueue:(id)object;
- (NSMutableArray*)getAllObjects;

// Common Methods
- (NSInteger)count;
- (NSInteger)capacity;

@end
