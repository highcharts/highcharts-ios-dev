#import "PlotOptionsPyramidStatesHoverMarker.h"

@implementation PlotOptionsPyramidStatesHoverMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.states) {
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getString];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

@end