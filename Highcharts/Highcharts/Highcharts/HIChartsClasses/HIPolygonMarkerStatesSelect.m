#import "HIPolygonMarkerStatesSelect.h"

@implementation HIPolygonMarkerStatesSelect

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
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getString];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

@end