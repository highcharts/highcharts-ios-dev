#import "HIPlotOptionsGaugeDial.h"

@implementation HIPlotOptionsGaugeDial

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.topWidth) {
		params[@"topWidth"] = self.topWidth;
	}
	if (self.rearLength) {
		params[@"rearLength"] = self.rearLength;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.baseLength) {
		params[@"baseLength"] = self.baseLength;
	}
	if (self.baseWidth) {
		params[@"baseWidth"] = self.baseWidth;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getString];
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	return params;
}

@end