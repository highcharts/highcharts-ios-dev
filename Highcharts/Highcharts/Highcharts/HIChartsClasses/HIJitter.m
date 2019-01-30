#import "HIChartsJSONSerializableSubclass.h"
#import "HIJitter.h"

@implementation HIJitter

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIJitter *copyJitter = [[HIJitter allocWithZone: zone] init];
	copyJitter.y = [self.y copyWithZone: zone];
	copyJitter.x = [self.x copyWithZone: zone];
	return copyJitter;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	return params;
}

# pragma mark - Setters

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

@end