#import "HIPlotOptionsBoxplotZones.h"

@implementation HIPlotOptionsBoxplotZones

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.className) {
		params[@"className"] = self.className;
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