#import "HIChartParallelAxesLabelsStyle.h"

@implementation HIChartParallelAxesLabelsStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	return params;
}

@end