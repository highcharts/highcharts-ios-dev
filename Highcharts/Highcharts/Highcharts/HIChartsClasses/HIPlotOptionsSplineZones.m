#import "HIPlotOptionsSplineZones.h"

@implementation HIPlotOptionsSplineZones

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	return params;
}

@end