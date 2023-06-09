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
	copyTime.mapFunction = [self.mapFunction copyWithZone: zone];
	copyTime.min = [self.min copyWithZone: zone];
	copyTime.max = [self.max copyWithZone: zone];
	copyTime.within = [self.within copyWithZone: zone];
	copyTime.value = [self.value copyWithZone: zone];
	copyTime.mapTo = [self.mapTo copyWithZone: zone];
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
	if (self.mapFunction) {
		params[@"mapFunction"] = self.mapFunction;
	}
	if (self.min) {
		params[@"min"] = self.min;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.within) {
		params[@"within"] = self.within;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.mapTo) {
		params[@"mapTo"] = self.mapTo;
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

-(void)setMapFunction:(NSString *)mapFunction {
	NSString *oldValue = _mapFunction;
	_mapFunction = mapFunction;
	[self updateNSObject:oldValue newValue:mapFunction propertyName:@"mapFunction"];
}

-(void)setMin:(NSNumber *)min {
	NSNumber *oldValue = _min;
	_min = min;
	[self updateNSObject:oldValue newValue:min propertyName:@"min"];
}

-(void)setMax:(NSNumber *)max {
	NSNumber *oldValue = _max;
	_max = max;
	[self updateNSObject:oldValue newValue:max propertyName:@"max"];
}

-(void)setWithin:(NSString *)within {
	NSString *oldValue = _within;
	_within = within;
	[self updateNSObject:oldValue newValue:within propertyName:@"within"];
}

-(void)setValue:(NSNumber *)value {
	NSNumber *oldValue = _value;
	_value = value;
	[self updateNSObject:oldValue newValue:value propertyName:@"value"];
}

-(void)setMapTo:(NSString *)mapTo {
	NSString *oldValue = _mapTo;
	_mapTo = mapTo;
	[self updateNSObject:oldValue newValue:mapTo propertyName:@"mapTo"];
}

@end