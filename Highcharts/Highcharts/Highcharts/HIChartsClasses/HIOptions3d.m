#import "HIOptions3d.h"

@implementation HIOptions3d

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.beta) {
		params[@"beta"] = self.beta;
	}
	if (self.axisLabelPosition) {
		params[@"axisLabelPosition"] = self.axisLabelPosition;
	}
	if (self.fitToPlot) {
		params[@"fitToPlot"] = self.fitToPlot;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.viewDistance) {
		params[@"viewDistance"] = self.viewDistance;
	}
	if (self.frame) {
		params[@"frame"] = [self.frame getParams];
	}
	if (self.alpha) {
		params[@"alpha"] = self.alpha;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

@end