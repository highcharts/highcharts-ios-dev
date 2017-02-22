#import "HIChartOptions3dFrame.h"

@implementation HIChartOptions3dFrame

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.back) {
		params[@"back"] = [self.back getParams];
	}
	if (self.side) {
		params[@"side"] = [self.side getParams];
	}
	if (self.bottom) {
		params[@"bottom"] = [self.bottom getParams];
	}
	return params;
}

@end