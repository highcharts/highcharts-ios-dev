#import "HIChartsJSONSerializableSubclass.h"
#import "HIDateTimeLabelFormats.h"

@implementation HIDateTimeLabelFormats

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDateTimeLabelFormats *copyDateTimeLabelFormats = [[HIDateTimeLabelFormats allocWithZone: zone] init];
	copyDateTimeLabelFormats.millisecond = [self.millisecond copyWithZone: zone];
	copyDateTimeLabelFormats.week = [self.week copyWithZone: zone];
	copyDateTimeLabelFormats.hour = [self.hour copyWithZone: zone];
	copyDateTimeLabelFormats.month = [self.month copyWithZone: zone];
	copyDateTimeLabelFormats.second = [self.second copyWithZone: zone];
	copyDateTimeLabelFormats.year = [self.year copyWithZone: zone];
	copyDateTimeLabelFormats.day = [self.day copyWithZone: zone];
	copyDateTimeLabelFormats.minute = [self.minute copyWithZone: zone];
	return copyDateTimeLabelFormats;
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
	NSString *oldValue = _millisecond;
	_millisecond = millisecond;
	[self updateNSObject:oldValue newValue:millisecond propertyName:@"millisecond"];
}

-(void)setWeek:(NSString *)week {
	NSString *oldValue = _week;
	_week = week;
	[self updateNSObject:oldValue newValue:week propertyName:@"week"];
}

-(void)setHour:(NSString *)hour {
	NSString *oldValue = _hour;
	_hour = hour;
	[self updateNSObject:oldValue newValue:hour propertyName:@"hour"];
}

-(void)setMonth:(NSString *)month {
	NSString *oldValue = _month;
	_month = month;
	[self updateNSObject:oldValue newValue:month propertyName:@"month"];
}

-(void)setSecond:(NSString *)second {
	NSString *oldValue = _second;
	_second = second;
	[self updateNSObject:oldValue newValue:second propertyName:@"second"];
}

-(void)setYear:(NSString *)year {
	NSString *oldValue = _year;
	_year = year;
	[self updateNSObject:oldValue newValue:year propertyName:@"year"];
}

-(void)setDay:(NSString *)day {
	NSString *oldValue = _day;
	_day = day;
	[self updateNSObject:oldValue newValue:day propertyName:@"day"];
}

-(void)setMinute:(NSString *)minute {
	NSString *oldValue = _minute;
	_minute = minute;
	[self updateNSObject:oldValue newValue:minute propertyName:@"minute"];
}

@end