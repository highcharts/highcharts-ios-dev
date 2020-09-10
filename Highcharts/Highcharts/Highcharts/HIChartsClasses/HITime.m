#import "HIChartsJSONSerializableSubclass.h"
#import "HITime.h"

@implementation HITime

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITime *copyTime = [[HITime allocWithZone: zone] init];
	copyTime.useUTC = [self.useUTC copyWithZone: zone];
	copyTime.getTimezoneOffset = [self.getTimezoneOffset copyWithZone: zone];
	copyTime.moment = [self.moment copyWithZone: zone];
	copyTime.Date = [self.Date copyWithZone: zone];
	copyTime.timezone = [self.timezone copyWithZone: zone];
	copyTime.timezoneOffset = [self.timezoneOffset copyWithZone: zone];
	return copyTime;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.useUTC) {
		params[@"useUTC"] = self.useUTC;
	}
	if (self.getTimezoneOffset) {
		params[@"getTimezoneOffset"] = [self.getTimezoneOffset getFunction];
	}
	if (self.moment) {
		params[@"moment"] = [self.moment getFunction];
	}
	if (self.Date) {
		params[@"Date"] = self.Date;
	}
	if (self.timezone) {
		params[@"timezone"] = self.timezone;
	}
	if (self.timezoneOffset) {
		params[@"timezoneOffset"] = self.timezoneOffset;
	}
	return params;
}

# pragma mark - Setters

-(void)setUseUTC:(NSNumber *)useUTC {
	NSNumber *oldValue = _useUTC;
	_useUTC = useUTC;
	[self updateNSObject:oldValue newValue:useUTC propertyName:@"useUTC"];
}

-(void)setGetTimezoneOffset:(HIFunction *)getTimezoneOffset {
	HIFunction *oldValue = _getTimezoneOffset;
	_getTimezoneOffset = getTimezoneOffset;
	[self updateHIObject:oldValue newValue:getTimezoneOffset propertyName:@"getTimezoneOffset"];
}

-(void)setMoment:(HIFunction *)moment {
	HIFunction *oldValue = _moment;
	_moment = moment;
	[self updateHIObject:oldValue newValue:moment propertyName:@"moment"];
}

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

-(void)setTimezoneOffset:(NSNumber *)timezoneOffset {
	NSNumber *oldValue = _timezoneOffset;
	_timezoneOffset = timezoneOffset;
	[self updateNSObject:oldValue newValue:timezoneOffset propertyName:@"timezoneOffset"];
}

@end