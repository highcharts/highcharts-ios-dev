#import "HIDateTimeLabelFormats.h"

@implementation HIDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.hour) {
		params[@"hour"] = self.hour;
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
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	return params;
}

# pragma mark - Setters

-(void)setHour:(NSString *)hour {
	_hour = hour;
	[self updateNSObject:@"hour"];
}

-(void)setMonth:(NSString *)month {
	_month = month;
	[self updateNSObject:@"month"];
}

-(void)setYear:(NSString *)year {
	_year = year;
	[self updateNSObject:@"year"];
}

-(void)setSecond:(NSString *)second {
	_second = second;
	[self updateNSObject:@"second"];
}

-(void)setWeek:(NSString *)week {
	_week = week;
	[self updateNSObject:@"week"];
}

-(void)setMillisecond:(NSString *)millisecond {
	_millisecond = millisecond;
	[self updateNSObject:@"millisecond"];
}

-(void)setMinute:(NSString *)minute {
	_minute = minute;
	[self updateNSObject:@"minute"];
}

-(void)setDay:(NSString *)day {
	_day = day;
	[self updateNSObject:@"day"];
}

@end