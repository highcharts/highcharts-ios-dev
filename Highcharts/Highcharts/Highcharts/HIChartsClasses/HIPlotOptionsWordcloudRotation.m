#import "HIPlotOptionsWordcloudRotation.h"

@implementation HIPlotOptionsWordcloudRotation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.orientations) {
		params[@"orientations"] = self.orientations;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	return params;
}

@end