#import "HIPlotOptionsBoxplotZones.h"

@implementation HIPlotOptionsBoxplotZones

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	return params;
}

@end