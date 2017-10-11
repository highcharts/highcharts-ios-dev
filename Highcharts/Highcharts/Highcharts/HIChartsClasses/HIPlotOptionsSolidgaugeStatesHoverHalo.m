#import "HIPlotOptionsSolidgaugeStatesHoverHalo.h"

@implementation HIPlotOptionsSolidgaugeStatesHoverHalo

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.attributes) {
		params[@"attributes"] = self.attributes;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	return params;
}

@end