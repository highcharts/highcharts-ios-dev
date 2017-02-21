#import "BubbleStatesHoverMarker.h"

@implementation BubbleStatesHoverMarker

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
	if (self.states) {
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getString];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	return params;
}

@end