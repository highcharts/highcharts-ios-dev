#import "HIPlotOptionsScatter3dStatesHoverMarkerStates.h"

@implementation HIPlotOptionsScatter3dStatesHoverMarkerStates

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.hover) {
		params[@"hover"] = [self.hover getParams];
	}
	if (self.select) {
		params[@"select"] = [self.select getParams];
	}
	return params;
}

@end