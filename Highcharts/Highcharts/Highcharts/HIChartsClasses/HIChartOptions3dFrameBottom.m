#import "HIChartOptions3dFrameBottom.h"

@implementation HIChartOptions3dFrameBottom

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	return params;
}

@end