#import "HIPlotOptionsBubbleMarker.h"

@implementation HIPlotOptionsBubbleMarker

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.states) {
		params[@"states"] = [self.states getParams];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	return params;
}

@end