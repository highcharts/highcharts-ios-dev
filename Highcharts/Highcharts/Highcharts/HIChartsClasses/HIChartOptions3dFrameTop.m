#import "HIChartOptions3dFrameTop.h"

@implementation HIChartOptions3dFrameTop

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	return params;
}

@end