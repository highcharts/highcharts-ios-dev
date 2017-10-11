#import "HIPlotOptionsGaugePivot.h"

@implementation HIPlotOptionsGaugePivot

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	return params;
}

@end