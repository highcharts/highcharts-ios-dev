#import "HIPolygonStatesHoverMarker.h"

@implementation HIPolygonStatesHoverMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getString];
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.states) {
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	return params;
}

@end