#import "HIPlotOptionsWaterfallStatesHover.h"

@implementation HIPlotOptionsWaterfallStatesHover

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.lineWidthPlus) {
		params[@"lineWidthPlus"] = self.lineWidthPlus;
	}
	if (self.halo) {
		params[@"halo"] = [self.halo getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	return params;
}

@end