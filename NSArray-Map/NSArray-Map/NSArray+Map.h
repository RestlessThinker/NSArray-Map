//
//  NSArray+Map.h
//  NSArray-Map
//
//  Created by Louie Penaflor on 5/4/13.
//
//

#import <Foundation/Foundation.h>

typedef id(^MapBlock)(id object);

@interface NSArray (Map)

- (NSArray *)map:(MapBlock)block;

@end
