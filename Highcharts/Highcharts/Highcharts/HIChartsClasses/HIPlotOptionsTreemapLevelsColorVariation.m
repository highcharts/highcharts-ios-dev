#import "HIPlotOptionsTreemapLevelsColorVariation.h"

@implementation HIPlotOptionsTreemapLevelsColorVariation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.key) {
		params[@"key"] = self.key;
	}
	return params;
}

@end