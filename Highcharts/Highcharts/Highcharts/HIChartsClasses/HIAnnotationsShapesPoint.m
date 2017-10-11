#import "HIAnnotationsShapesPoint.h"

@implementation HIAnnotationsShapesPoint

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.xAxis) {
		params[@"xAxis"] = self.xAxis;
	}
	if (self.yAxis) {
		params[@"yAxis"] = self.yAxis;
	}
	return params;
}

@end