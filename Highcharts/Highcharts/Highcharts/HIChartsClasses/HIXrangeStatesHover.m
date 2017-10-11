#import "HIXrangeStatesHover.h"

@implementation HIXrangeStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	return params;
}

@end