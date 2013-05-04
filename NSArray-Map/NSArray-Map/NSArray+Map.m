//
//  NSArray+Map.m
//  NSArray-Map
//
//  Created by Louie Penaflor on 5/4/13.
//
//

#import "NSArray+Map.h"

@implementation NSArray (Map)

- (NSArray *)map:(MapBlock)block
{
	NSMutableArray *resultArray = [[NSMutableArray alloc] init];
	for( id obj in self ) {
		[resultArray addObject:block(obj)];
	}
	return resultArray;
}

@end
