#import "HIPlotOptionsParetoTooltipDateTimeLabelFormats.h"

@implementation HIPlotOptionsParetoTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	return params;
}

@end