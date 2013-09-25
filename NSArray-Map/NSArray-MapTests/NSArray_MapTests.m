//
//  NSArray_MapTests.m
//  NSArray-MapTests
//
//  Created by Louie Penaflor on 5/4/13.
//
//

#import "NSArray_MapTests.h"
#import "NSArray+Map.h"

@interface NSArray_MapTests ()

- (void)testMap;
- (void)testMapWithIndex;

@end

@implementation NSArray_MapTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testMap
{
	NSArray *names = @[ @"John", @"Jane" ];
	NSArray *fullnames = [names arrayByMappingObjectsUsingBlock:^id(id object) {
		NSString *firstName = (id)object;
		return [NSString stringWithFormat:@"%@ %@", firstName, @"Doe"];
	}];
	
	STAssertTrue( [[fullnames objectAtIndex:0] isEqualToString:@"John Doe"], @"should be true" );
	STAssertTrue( [[fullnames objectAtIndex:1] isEqualToString:@"Jane Doe"], @"should be true" );
}

- (void)testMapWithIndex
{
    NSArray *numbers = @[ @1, @2, @3 ];
	NSArray *multiplied = [numbers arrayByMappingObjectsUsingBlockWithIndex:^id(id object, NSUInteger idx, BOOL *stop) {
		NSNumber *number = (id)object;
		return [NSNumber numberWithInt:[number intValue] * idx];
	}];
	
	STAssertTrue( [[multiplied objectAtIndex:0] intValue] == 0, @"should be true" );
	STAssertTrue( [[multiplied objectAtIndex:1] intValue] == 2, @"should be true" );
	STAssertTrue( [[multiplied objectAtIndex:2] intValue] == 6, @"should be true" );
}

@end
