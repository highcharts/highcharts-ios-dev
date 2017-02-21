#import "PlotOptionsBarStatesHover.h"

@implementation PlotOptionsBarStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	return params;
}

@end