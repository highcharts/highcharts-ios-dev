#import "HIAnnotationsLabelsPoint.h"

@implementation HIAnnotationsLabelsPoint

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	return params;
}

@end