#import "PlotOptionsSplineMarkerStatesHover.h"

@implementation PlotOptionsSplineMarkerStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	if (self.radiusPlus) {
		params[@"radiusPlus"] = self.radiusPlus;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getString];
	}
	return params;
}

@end