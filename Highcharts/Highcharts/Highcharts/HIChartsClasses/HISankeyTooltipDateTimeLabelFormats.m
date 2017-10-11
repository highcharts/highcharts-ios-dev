#import "HISankeyTooltipDateTimeLabelFormats.h"

@implementation HISankeyTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	return params;
}

@end