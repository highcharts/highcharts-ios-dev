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
		params[@"millisecond"] = [self.millisecond getParams];
	}
	if (self.week) {
		params[@"week"] = [self.week getParams];
	}
	if (self.hour) {
		params[@"hour"] = [self.hour getParams];
	}
	if (self.month) {
		params[@"month"] = [self.month getParams];
	}
	if (self.second) {
		params[@"second"] = [self.second getParams];
	}
	if (self.year) {
		params[@"year"] = [self.year getParams];
	}
	if (self.day) {
		params[@"day"] = [self.day getParams];
	}
	if (self.minute) {
		params[@"minute"] = [self.minute getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setMillisecond:(HIMillisecond *)millisecond {
	HIMillisecond *oldValue = _millisecond;
	if(self.millisecond) {
		[self removeObserver:self forKeyPath:@"millisecond.isUpdated"];
	}
	_millisecond = millisecond;
	[self updateHIObject:oldValue newValue:millisecond propertyName:@"millisecond"];
}

-(void)setWeek:(HIWeek *)week {
	HIWeek *oldValue = _week;
	if(self.week) {
		[self removeObserver:self forKeyPath:@"week.isUpdated"];
	}
	_week = week;
	[self updateHIObject:oldValue newValue:week propertyName:@"week"];
}

-(void)setHour:(HIHour *)hour {
	HIHour *oldValue = _hour;
	if(self.hour) {
		[self removeObserver:self forKeyPath:@"hour.isUpdated"];
	}
	_hour = hour;
	[self updateHIObject:oldValue newValue:hour propertyName:@"hour"];
}

-(void)setMonth:(HIMonth *)month {
	HIMonth *oldValue = _month;
	if(self.month) {
		[self removeObserver:self forKeyPath:@"month.isUpdated"];
	}
	_month = month;
	[self updateHIObject:oldValue newValue:month propertyName:@"month"];
}

-(void)setSecond:(HISecond *)second {
	HISecond *oldValue = _second;
	if(self.second) {
		[self removeObserver:self forKeyPath:@"second.isUpdated"];
	}
	_second = second;
	[self updateHIObject:oldValue newValue:second propertyName:@"second"];
}

-(void)setYear:(HIYear *)year {
	HIYear *oldValue = _year;
	if(self.year) {
		[self removeObserver:self forKeyPath:@"year.isUpdated"];
	}
	_year = year;
	[self updateHIObject:oldValue newValue:year propertyName:@"year"];
}

-(void)setDay:(HIDay *)day {
	HIDay *oldValue = _day;
	if(self.day) {
		[self removeObserver:self forKeyPath:@"day.isUpdated"];
	}
	_day = day;
	[self updateHIObject:oldValue newValue:day propertyName:@"day"];
}

-(void)setMinute:(HIMinute *)minute {
	HIMinute *oldValue = _minute;
	if(self.minute) {
		[self removeObserver:self forKeyPath:@"minute.isUpdated"];
	}
	_minute = minute;
	[self updateHIObject:oldValue newValue:minute propertyName:@"minute"];
}

@end