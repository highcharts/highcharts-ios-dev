#import "ChartOptions3dFrameSide.h"

@implementation ChartOptions3dFrameSide

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	return params;
}

@end