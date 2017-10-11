#import "HIBulletStatesHover.h"

@implementation HIBulletStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	return params;
}

@end