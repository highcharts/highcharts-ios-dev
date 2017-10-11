#import "HIScatter3dTooltipDateTimeLabelFormats.h"

@implementation HIScatter3dTooltipDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	return params;
}

@end