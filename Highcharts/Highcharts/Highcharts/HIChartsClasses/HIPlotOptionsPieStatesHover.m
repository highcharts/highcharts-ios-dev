#import "HIPlotOptionsPieStatesHover.h"

@implementation HIPlotOptionsPieStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.brightness) {
		params[@"brightness"] = self.brightness;
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	return params;
}

@end