#import "HIPlotOptionsSeriesZones.h"

@implementation HIPlotOptionsSeriesZones

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	return params;
}

@end