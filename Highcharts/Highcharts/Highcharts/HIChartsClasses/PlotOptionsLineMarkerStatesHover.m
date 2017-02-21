#import "PlotOptionsLineMarkerStatesHover.h"

@implementation PlotOptionsLineMarkerStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getString];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.radiusPlus) {
		params[@"radiusPlus"] = self.radiusPlus;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	return params;
}

@end