#import "HIPlotOptionsColumnrangeTooltipDateTimeLabelFormats.h"

@implementation HIPlotOptionsColumnrangeTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	return params;
}

@end