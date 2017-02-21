#import "PolygonDataMarker.h"

@implementation PolygonDataMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getString];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getString];
	}
	return params;
}

@end