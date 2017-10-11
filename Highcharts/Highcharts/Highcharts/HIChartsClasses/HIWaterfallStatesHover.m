#import "HIWaterfallStatesHover.h"

@implementation HIWaterfallStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	return params;
}

@end