#import "HIChartsJSONSerializableSubclass.h"
#import "HIDateTimeFormatOptions.h"

@implementation HIDateTimeFormatOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDateTimeFormatOptions *copyDateTimeFormatOptions = [[HIDateTimeFormatOptions allocWithZone: zone] init];
	copyDateTimeFormatOptions.day = [self.day copyWithZone: zone];
	copyDateTimeFormatOptions.era = [self.era copyWithZone: zone];
	copyDateTimeFormatOptions.formatMatcher = [self.formatMatcher copyWithZone: zone];
	copyDateTimeFormatOptions.fractionalSecondDigits = [self.fractionalSecondDigits copyWithZone: zone];
	copyDateTimeFormatOptions.hour = [self.hour copyWithZone: zone];
	copyDateTimeFormatOptions.hour12 = [self.hour12 copyWithZone: zone];
	copyDateTimeFormatOptions.localeMatcher = [self.localeMatcher copyWithZone: zone];
	copyDateTimeFormatOptions.minute = [self.minute copyWithZone: zone];
	copyDateTimeFormatOptions.month = [self.month copyWithZone: zone];
	copyDateTimeFormatOptions.prefix = [self.prefix copyWithZone: zone];
	copyDateTimeFormatOptions.second = [self.second copyWithZone: zone];
	copyDateTimeFormatOptions.suffix = [self.suffix copyWithZone: zone];
	copyDateTimeFormatOptions.timeZone = [self.timeZone copyWithZone: zone];
	copyDateTimeFormatOptions.timeZoneName = [self.timeZoneName copyWithZone: zone];
	copyDateTimeFormatOptions.weekday = [self.weekday copyWithZone: zone];
	copyDateTimeFormatOptions.year = [self.year copyWithZone: zone];
	return copyDateTimeFormatOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.day) {
		params[@"day"] = self.day;
	}
	if (self.era) {
		params[@"era"] = self.era;
	}
	if (self.formatMatcher) {
		params[@"formatMatcher"] = self.formatMatcher;
	}
	if (self.fractionalSecondDigits) {
		params[@"fractionalSecondDigits"] = self.fractionalSecondDigits;
	}
	if (self.hour) {
		params[@"hour"] = self.hour;
	}
	if (self.hour12) {
		params[@"hour12"] = self.hour12;
	}
	if (self.localeMatcher) {
		params[@"localeMatcher"] = self.localeMatcher;
	}
	if (self.minute) {
		params[@"minute"] = self.minute;
	}
	if (self.month) {
		params[@"month"] = self.month;
	}
	if (self.prefix) {
		params[@"prefix"] = self.prefix;
	}
	if (self.second) {
		params[@"second"] = self.second;
	}
	if (self.suffix) {
		params[@"suffix"] = self.suffix;
	}
	if (self.timeZone) {
		params[@"timeZone"] = self.timeZone;
	}
	if (self.timeZoneName) {
		params[@"timeZoneName"] = self.timeZoneName;
	}
	if (self.weekday) {
		params[@"weekday"] = self.weekday;
	}
	if (self.year) {
		params[@"year"] = self.year;
	}
	return params;
}

# pragma mark - Setters

-(void)setDay:(NSString *)day {
	NSString *oldValue = _day;
	_day = day;
	[self updateNSObject:oldValue newValue:day propertyName:@"day"];
}

-(void)setEra:(NSString *)era {
	NSString *oldValue = _era;
	_era = era;
	[self updateNSObject:oldValue newValue:era propertyName:@"era"];
}

-(void)setFormatMatcher:(NSString *)formatMatcher {
	NSString *oldValue = _formatMatcher;
	_formatMatcher = formatMatcher;
	[self updateNSObject:oldValue newValue:formatMatcher propertyName:@"formatMatcher"];
}

-(void)setFractionalSecondDigits:(NSNumber *)fractionalSecondDigits {
	NSNumber *oldValue = _fractionalSecondDigits;
	_fractionalSecondDigits = fractionalSecondDigits;
	[self updateNSObject:oldValue newValue:fractionalSecondDigits propertyName:@"fractionalSecondDigits"];
}

-(void)setHour:(NSString *)hour {
	NSString *oldValue = _hour;
	_hour = hour;
	[self updateNSObject:oldValue newValue:hour propertyName:@"hour"];
}

-(void)setHour12:(NSString *)hour12 {
	NSString *oldValue = _hour12;
	_hour12 = hour12;
	[self updateNSObject:oldValue newValue:hour12 propertyName:@"hour12"];
}

-(void)setLocaleMatcher:(NSString *)localeMatcher {
	NSString *oldValue = _localeMatcher;
	_localeMatcher = localeMatcher;
	[self updateNSObject:oldValue newValue:localeMatcher propertyName:@"localeMatcher"];
}

-(void)setMinute:(NSString *)minute {
	NSString *oldValue = _minute;
	_minute = minute;
	[self updateNSObject:oldValue newValue:minute propertyName:@"minute"];
}

-(void)setMonth:(NSString *)month {
	NSString *oldValue = _month;
	_month = month;
	[self updateNSObject:oldValue newValue:month propertyName:@"month"];
}

-(void)setPrefix:(NSString *)prefix {
	NSString *oldValue = _prefix;
	_prefix = prefix;
	[self updateNSObject:oldValue newValue:prefix propertyName:@"prefix"];
}

-(void)setSecond:(NSString *)second {
	NSString *oldValue = _second;
	_second = second;
	[self updateNSObject:oldValue newValue:second propertyName:@"second"];
}

-(void)setSuffix:(NSString *)suffix {
	NSString *oldValue = _suffix;
	_suffix = suffix;
	[self updateNSObject:oldValue newValue:suffix propertyName:@"suffix"];
}

-(void)setTimeZone:(NSString *)timeZone {
	NSString *oldValue = _timeZone;
	_timeZone = timeZone;
	[self updateNSObject:oldValue newValue:timeZone propertyName:@"timeZone"];
}

-(void)setTimeZoneName:(NSString *)timeZoneName {
	NSString *oldValue = _timeZoneName;
	_timeZoneName = timeZoneName;
	[self updateNSObject:oldValue newValue:timeZoneName propertyName:@"timeZoneName"];
}

-(void)setWeekday:(NSString *)weekday {
	NSString *oldValue = _weekday;
	_weekday = weekday;
	[self updateNSObject:oldValue newValue:weekday propertyName:@"weekday"];
}

-(void)setYear:(NSString *)year {
	NSString *oldValue = _year;
	_year = year;
	[self updateNSObject:oldValue newValue:year propertyName:@"year"];
}

@end