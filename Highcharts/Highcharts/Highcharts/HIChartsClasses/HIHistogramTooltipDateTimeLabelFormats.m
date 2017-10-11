#import "HIHistogramTooltipDateTimeLabelFormats.h"

@implementation HIHistogramTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	return params;
}

@end