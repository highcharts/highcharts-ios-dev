#import "HITilemapTooltipDateTimeLabelFormats.h"

@implementation HITilemapTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	return params;
}

@end