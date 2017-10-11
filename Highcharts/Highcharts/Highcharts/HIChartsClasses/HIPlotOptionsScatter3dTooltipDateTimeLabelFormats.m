#import "HIPlotOptionsScatter3dTooltipDateTimeLabelFormats.h"

@implementation HIPlotOptionsScatter3dTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	return params;
}

@end