#import "HIGaugeStatesHover.h"

@implementation HIGaugeStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	return params;
}

@end