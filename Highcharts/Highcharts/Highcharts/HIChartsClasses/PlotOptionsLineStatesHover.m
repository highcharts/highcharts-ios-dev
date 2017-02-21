#import "PlotOptionsLineStatesHover.h"

@implementation PlotOptionsLineStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	return params;
}

@end