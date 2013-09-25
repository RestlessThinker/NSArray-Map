//
//  NSArray+Map.m
//  NSArray-Map
//
//  Created by Louie Penaflor on 5/4/13.
//
//

#import "NSArray+Map.h"

@implementation NSArray (Map)

- (NSArray *)arrayByMappingObjectsUsingBlock:(MapBlock)block
{
	NSMutableArray *resultArray = [[NSMutableArray alloc] init];
	for( id obj in self ) {
		[resultArray addObject:block(obj)];
	}
	return resultArray;
}

- (NSArray *)arrayByMappingObjectsUsingBlockWithIndex:(id(^)(id, NSUInteger, BOOL *))blockWithIndex
{
	NSMutableArray *result = [NSMutableArray arrayWithCapacity:[self count]];
	[self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
		[result addObject:blockWithIndex(obj, idx, stop)];
	}];
	return result;
}

@end
