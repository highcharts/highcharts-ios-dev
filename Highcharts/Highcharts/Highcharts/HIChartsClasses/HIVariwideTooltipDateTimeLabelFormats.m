#import "HIVariwideTooltipDateTimeLabelFormats.h"

@implementation HIVariwideTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
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