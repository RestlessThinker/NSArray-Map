//
//  NSArray+Map.h
//  NSArray-Map
//
//  Created by Louie Penaflor on 5/4/13.
//
//

#import <Foundation/Foundation.h>

typedef id(^MapBlock)(id object);
typedef id(^MapBlockWithIndex)(id object, NSUInteger idx, BOOL *stop);

@interface NSArray (Map)

- (NSArray *)arrayByMappingObjectsUsingBlock:(MapBlock)block;
- (NSArray *)arrayByMappingObjectsUsingBlockWithIndex:(MapBlockWithIndex)blockWithIndex;

@end
