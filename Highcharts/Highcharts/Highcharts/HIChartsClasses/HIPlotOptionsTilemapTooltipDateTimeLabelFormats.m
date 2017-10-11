#import "HIPlotOptionsTilemapTooltipDateTimeLabelFormats.h"

@implementation HIPlotOptionsTilemapTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	return params;
}

@end