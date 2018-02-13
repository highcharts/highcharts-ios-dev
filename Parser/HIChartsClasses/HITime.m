#import "HIChartsJSONSerializableSubclass.h"
#import "HITime.h"

@implementation HITime

-(instancetype)init {
	return [super init];
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
	_Date = Date;
	[self updateNSObject:@"Date"];
}

-(void)setTimezone:(NSString *)timezone {
	_timezone = timezone;
	[self updateNSObject:@"timezone"];
}

-(void)setGetTimezoneOffset:(HIFunction *)getTimezoneOffset {
	HIFunction *oldValue = _getTimezoneOffset;
	if(self.getTimezoneOffset) {
		[self removeObserver:self forKeyPath:@"getTimezoneOffset.isUpdated"];
	}
	_getTimezoneOffset = getTimezoneOffset;
	[self updateHIObject:oldValue newValue:getTimezoneOffset propertyName:@"getTimezoneOffset"];
}

-(void)setTimezoneOffset:(NSNumber *)timezoneOffset {
	_timezoneOffset = timezoneOffset;
	[self updateNSObject:@"timezoneOffset"];
}

-(void)setUseUTC:(NSNumber *)useUTC {
	_useUTC = useUTC;
	[self updateNSObject:@"useUTC"];
}

@end