#import "HIPlotOptionsScatter3dMarkerStates.h"

@implementation HIPlotOptionsScatter3dMarkerStates

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.select) {
		params[@"select"] = [self.select getParams];
	}
	if (self.hover) {
		params[@"hover"] = [self.hover getParams];
	}
	return params;
}

@end