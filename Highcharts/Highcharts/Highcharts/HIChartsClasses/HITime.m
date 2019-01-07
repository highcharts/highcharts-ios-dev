#import "HIChartsJSONSerializableSubclass.h"
#import "HITime.h"

@implementation HITime

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITime *copyTime = [[HITime allocWithZone: zone] init];
	copyTime.Date = [self.Date copyWithZone: zone];
	copyTime.timezone = [self.timezone copyWithZone: zone];
	copyTime.getTimezoneOffset = [self.getTimezoneOffset copyWithZone: zone];
	copyTime.timezoneOffset = [self.timezoneOffset copyWithZone: zone];
	copyTime.useUTC = [self.useUTC copyWithZone: zone];
	return copyTime;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.Date) {
		params[@"Date"] = self.Date;
	}
	if (self.timezone) {
		params[@"timezone"] = self.timezone;
	}
	if (self.getTimezoneOffset) {
		params[@"getTimezoneOffset"] = [self.getTimezoneOffset getFunction];
	}
	if (self.timezoneOffset) {
		params[@"timezoneOffset"] = self.timezoneOffset;
	}
	if (self.useUTC) {
		params[@"useUTC"] = self.useUTC;
	}
	return params;
}

# pragma mark - Setters

-(void)setDate:(id)Date {
	id oldValue = _Date;
	_Date = Date;
	[self updateNSObject:oldValue newValue:Date propertyName:@"Date"];
}

-(void)setTimezone:(NSString *)timezone {
	NSString *oldValue = _timezone;
	_timezone = timezone;
	[self updateNSObject:oldValue newValue:timezone propertyName:@"timezone"];
}

-(void)setGetTimezoneOffset:(HIFunction *)getTimezoneOffset {
	HIFunction *oldValue = _getTimezoneOffset;
	_getTimezoneOffset = getTimezoneOffset;
	[self updateHIObject:oldValue newValue:getTimezoneOffset propertyName:@"getTimezoneOffset"];
}

-(void)setTimezoneOffset:(NSNumber *)timezoneOffset {
	NSNumber *oldValue = _timezoneOffset;
	_timezoneOffset = timezoneOffset;
	[self updateNSObject:oldValue newValue:timezoneOffset propertyName:@"timezoneOffset"];
}

-(void)setUseUTC:(NSNumber *)useUTC {
	NSNumber *oldValue = _useUTC;
	_useUTC = useUTC;
	[self updateNSObject:oldValue newValue:useUTC propertyName:@"useUTC"];
}

@end