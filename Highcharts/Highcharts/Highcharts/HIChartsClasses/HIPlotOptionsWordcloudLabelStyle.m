#import "HIPlotOptionsWordcloudLabelStyle.h"

@implementation HIPlotOptionsWordcloudLabelStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	return params;
}

@end