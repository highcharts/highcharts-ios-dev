#import "HIPlotOptionsTilemapStatesHoverHalo.h"

@implementation HIPlotOptionsTilemapStatesHoverHalo

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.attributes) {
		params[@"attributes"] = [self.attributes getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	return params;
}

@end