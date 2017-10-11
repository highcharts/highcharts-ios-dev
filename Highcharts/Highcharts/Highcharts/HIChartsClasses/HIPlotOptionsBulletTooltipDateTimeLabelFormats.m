#import "HIPlotOptionsBulletTooltipDateTimeLabelFormats.h"

@implementation HIPlotOptionsBulletTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	return params;
}

@end