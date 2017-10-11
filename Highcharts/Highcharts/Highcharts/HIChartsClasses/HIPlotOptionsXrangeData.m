#import "HIPlotOptionsXrangeData.h"

@implementation HIPlotOptionsXrangeData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.x2) {
		params[@"x2"] = self.x2;
	}
	if (self.partialFill) {
		params[@"partialFill"] = [self.partialFill getParams];
	}
	return params;
}

@end