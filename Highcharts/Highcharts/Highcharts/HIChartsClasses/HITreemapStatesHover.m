#import "HITreemapStatesHover.h"

@implementation HITreemapStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	return params;
}

@end