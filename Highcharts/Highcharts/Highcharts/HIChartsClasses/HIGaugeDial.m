#import "HIGaugeDial.h"

@implementation HIGaugeDial

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.rearLength) {
		params[@"rearLength"] = self.rearLength;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.topWidth) {
		params[@"topWidth"] = self.topWidth;
	}
	if (self.baseLength) {
		params[@"baseLength"] = self.baseLength;
	}
	if (self.baseWidth) {
		params[@"baseWidth"] = self.baseWidth;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	return params;
}

@end