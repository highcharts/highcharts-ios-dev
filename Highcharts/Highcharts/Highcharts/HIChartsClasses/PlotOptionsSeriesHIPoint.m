#import "PlotOptionsSeriesHIPoint.h"

@implementation PlotOptionsSeriesHIPoint

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	return params;
}

@end