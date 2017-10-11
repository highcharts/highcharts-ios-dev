#import "HIScatter3dStatesHoverMarker.h"

@implementation HIScatter3dStatesHoverMarker

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
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	return params;
}

@end