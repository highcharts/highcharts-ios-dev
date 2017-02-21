#import "ChartOptions3d.h"

@implementation ChartOptions3d

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fitToPlot) {
		params[@"fitToPlot"] = self.fitToPlot;
	}
	if (self.beta) {
		params[@"beta"] = self.beta;
	}
	if (self.viewDistance) {
		params[@"viewDistance"] = self.viewDistance;
	}
	if (self.frame) {
		params[@"frame"] = [self.frame getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.alpha) {
		params[@"alpha"] = self.alpha;
	}
	return params;
}

@end