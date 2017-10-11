#import "HIPlotOptionsBubbleTooltipDateTimeLabelFormats.h"

@implementation HIPlotOptionsBubbleTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	return params;
}

@end