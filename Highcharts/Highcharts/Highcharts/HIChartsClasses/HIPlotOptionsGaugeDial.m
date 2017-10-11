#import "HIPlotOptionsGaugeDial.h"

@implementation HIPlotOptionsGaugeDial

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.rearLength) {
		params[@"rearLength"] = self.rearLength;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.baseLength) {
		params[@"baseLength"] = self.baseLength;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.topWidth) {
		params[@"topWidth"] = self.topWidth;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.baseWidth) {
		params[@"baseWidth"] = self.baseWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	return params;
}

@end