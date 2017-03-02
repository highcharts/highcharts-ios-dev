#import "HIPolygonDataMarkerStatesSelect.h"

@implementation HIPolygonDataMarkerStatesSelect

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

@end