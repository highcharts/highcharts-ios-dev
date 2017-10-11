#import "HIPaneBackgroundBackgroundColor.h"

@implementation HIPaneBackgroundBackgroundColor

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.stops) {
	}
	if (self.linearGradient) {
		params[@"linearGradient"] = [self.linearGradient getParams];
	}
	return params;
}

@end