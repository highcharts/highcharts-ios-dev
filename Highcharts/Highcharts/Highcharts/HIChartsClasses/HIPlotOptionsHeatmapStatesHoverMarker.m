#import "HIPlotOptionsHeatmapStatesHoverMarker.h"

@implementation HIPlotOptionsHeatmapStatesHoverMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	if (self.states) {
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getString];
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	return params;
}

@end