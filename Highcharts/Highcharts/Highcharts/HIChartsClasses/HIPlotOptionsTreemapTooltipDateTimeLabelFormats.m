#import "HIPlotOptionsTreemapTooltipDateTimeLabelFormats.h"

@implementation HIPlotOptionsTreemapTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	return params;
}

@end