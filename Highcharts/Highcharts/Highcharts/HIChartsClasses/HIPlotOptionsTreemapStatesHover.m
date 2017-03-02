#import "HIPlotOptionsTreemapStatesHover.h"

@implementation HIPlotOptionsTreemapStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	return params;
}

@end