#import "HIAreasplineMarker.h"

@implementation HIAreasplineMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
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