#import "GaugeDial.h"

@implementation GaugeDial

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.baseWidth) {
		params[@"baseWidth"] = self.baseWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.baseLength) {
		params[@"baseLength"] = self.baseLength;
	}
	if (self.rearLength) {
		params[@"rearLength"] = self.rearLength;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.topWidth) {
		params[@"topWidth"] = self.topWidth;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getString];
	}
	return params;
}

@end