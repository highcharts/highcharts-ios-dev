#import "HIChartsJSONSerializableSubclass.h"
#import "HIDateTimeLabelFormats.h"

@implementation HIDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.millisecond) {
		params[@"millisecond"] = self.millisecond;
	}
	if (self.week) {
		params[@"week"] = self.week;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	return params;
}

# pragma mark - Setters

-(void)setMillisecond:(NSString *)millisecond {
	_millisecond = millisecond;
	[self updateNSObject:@"millisecond"];
}

-(void)setWeek:(NSString *)week {
	_week = week;
	[self updateNSObject:@"week"];
}

-(void)setHour:(NSString *)hour {
	_hour = hour;
	[self updateNSObject:@"hour"];
}

-(void)setMonth:(NSString *)month {
	_month = month;
	[self updateNSObject:@"month"];
}

-(void)setSecond:(NSString *)second {
	_second = second;
	[self updateNSObject:@"second"];
}

-(void)setYear:(NSString *)year {
	_year = year;
	[self updateNSObject:@"year"];
}

-(void)setDay:(NSString *)day {
	_day = day;
	[self updateNSObject:@"day"];
}

-(void)setMinute:(NSString *)minute {
	_minute = minute;
	[self updateNSObject:@"minute"];
}

@end