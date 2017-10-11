#import "HIPlotOptionsAreasplinerangeMarkerStatesSelect.h"

@implementation HIPlotOptionsAreasplinerangeMarkerStatesSelect

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	return params;
}

@end