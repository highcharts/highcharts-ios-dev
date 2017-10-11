#import "HIPlotOptionsVectorTooltipDateTimeLabelFormats.h"

@implementation HIPlotOptionsVectorTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	return params;
}

@end