#import "HIPlotOptionsVectorStatesHoverMarkerStatesHover.h"

@implementation HIPlotOptionsVectorStatesHoverMarkerStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.radiusPlus) {
		params[@"radiusPlus"] = self.radiusPlus;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	return params;
}

@end