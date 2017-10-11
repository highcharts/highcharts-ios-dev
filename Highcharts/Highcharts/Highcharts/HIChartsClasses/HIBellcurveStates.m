#import "HIBellcurveStates.h"

@implementation HIBellcurveStates

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.hover) {
		params[@"hover"] = [self.hover getParams];
	}
	return params;
}

@end