#import "HIChartOptions3dFrameRight.h"

@implementation HIChartOptions3dFrameRight

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	return params;
}

@end