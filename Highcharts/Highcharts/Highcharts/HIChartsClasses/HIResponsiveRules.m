#import "HIResponsiveRules.h"

@implementation HIResponsiveRules

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.condition) {
		params[@"condition"] = [self.condition getParams];
	}
	if (self.chartOptions) {
		params[@"chartOptions"] = self.chartOptions;
	}
	return params;
}

@end