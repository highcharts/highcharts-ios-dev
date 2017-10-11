#import "HIVariwideStatesHover.h"

@implementation HIVariwideStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

@end