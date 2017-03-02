#import "HIPlotOptionsFunnelStatesHoverMarker.h"

@implementation HIPlotOptionsFunnelStatesHoverMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.states) {
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	return params;
}

@end