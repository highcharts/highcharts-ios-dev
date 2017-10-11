#import "HIPaneBackgroundBackgroundColorLinearGradient.h"

@implementation HIPaneBackgroundBackgroundColorLinearGradient

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.y1) {
		params[@"y1"] = self.y1;
	}
	if (self.y2) {
		params[@"y2"] = self.y2;
	}
	if (self.x2) {
		params[@"x2"] = self.x2;
	}
	if (self.x1) {
		params[@"x1"] = self.x1;
	}
	return params;
}

@end