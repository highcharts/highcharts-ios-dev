#import "HIAreasplinerangeStatesHoverMarker.h"

@implementation HIAreasplinerangeStatesHoverMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.states) {
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getString];
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	return params;
}

@end