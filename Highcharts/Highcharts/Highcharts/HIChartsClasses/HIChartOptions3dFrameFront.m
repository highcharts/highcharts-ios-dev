#import "HIChartOptions3dFrameFront.h"

@implementation HIChartOptions3dFrameFront

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	return params;
}

@end