#import "HIPolygonMarkerStatesHover.h"

@implementation HIPolygonMarkerStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
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
	return params;
}

@end