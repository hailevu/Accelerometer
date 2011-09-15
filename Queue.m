//
//  Queue.m
//  AccelerometerGraph
//
//  Created by Lê Vũ Hải on 9/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Queue.h"

@implementation Queue

- (id)initWithQueueSize:(NSInteger)size {
    self = [super init];
    if (self) {
        capacity = size;
        queueArray=[[NSMutableArray alloc] init];
    }
    return self;  
}

- (void)dealloc {
	[queueArray release];
	[self dealloc];
    [super dealloc];
}

- (id)dequeue {
    id obj = nil;
	if(queueArray.count > 0)
	{
		obj = [[[queueArray objectAtIndex:0]retain]autorelease];
		[queueArray removeObjectAtIndex:0];
	}
	return obj;
}

- (int)contains:(id)object{
    if([queueArray containsObject:object]){
        return [queueArray indexOfObject:object];
    }
    return -1;
}

- (void) enqueue:(id)object {
    if ([queueArray count] < capacity) {
        [queueArray addObject:object];
    } 
    else {
        [queueArray removeObjectAtIndex:0];
        [queueArray insertObject:object atIndex:capacity-1];
    }
}

- (id) objectAtIndex:(int)index {
    return [queueArray objectAtIndex:index];
}

- (NSInteger)count {
    return [queueArray count];
}

- (NSInteger)capacity {
    return capacity;
}

- (NSMutableArray*)getAllObjects{
    return queueArray;
}
@end
