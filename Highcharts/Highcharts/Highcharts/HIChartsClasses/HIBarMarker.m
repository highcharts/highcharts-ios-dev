#import "HIBarMarker.h"

@implementation HIBarMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
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
		params[@"states"] = [self.states getParams];
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	return params;
}

@end