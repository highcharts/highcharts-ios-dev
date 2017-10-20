#import "HIRules.h"

@implementation HIRules

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.chartOptions) {
		params[@"chartOptions"] = self.chartOptions;
	}
	if (self.condition) {
		params[@"condition"] = [self.condition getParams];
	}
	return params;
}

@end