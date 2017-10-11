#import "HIPlotOptionsBellcurveStatesHoverMarker.h"

@implementation HIPlotOptionsBellcurveStatesHoverMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	return params;
}

@end