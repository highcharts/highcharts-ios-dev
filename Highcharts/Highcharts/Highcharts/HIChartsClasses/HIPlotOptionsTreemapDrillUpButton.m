#import "HIPlotOptionsTreemapDrillUpButton.h"

@implementation HIPlotOptionsTreemapDrillUpButton

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.position) {
		params[@"position"] = [self.position getParams];
	}
	return params;
}

@end