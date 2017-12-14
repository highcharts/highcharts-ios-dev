#import "HIGlobal.h"

@implementation HIGlobal

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.timezone) {
		params[@"timezone"] = self.timezone;
	}
	if (self.VMLRadialGradientURL) {
		params[@"VMLRadialGradientURL"] = self.VMLRadialGradientURL;
	}
	if (self.timezoneOffset) {
		params[@"timezoneOffset"] = self.timezoneOffset;
	}
	if (self.Date) {
		params[@"Date"] = self.Date;
	}
	if (self.canvasToolsURL) {
		params[@"canvasToolsURL"] = self.canvasToolsURL;
	}
	if (self.getTimezoneOffset) {
		params[@"getTimezoneOffset"] = [self.getTimezoneOffset getFunction];
	}
	if (self.useUTC) {
		params[@"useUTC"] = self.useUTC;
	}
	return params;
}

# pragma mark - Setters

-(void)setTimezone:(NSString *)timezone {
	_timezone = timezone;
	[self updateNSObject:@"timezone"];
}

-(void)setVMLRadialGradientURL:(NSString *)VMLRadialGradientURL {
	_VMLRadialGradientURL = VMLRadialGradientURL;
	[self updateNSObject:@"VMLRadialGradientURL"];
}

-(void)setTimezoneOffset:(NSNumber *)timezoneOffset {
	_timezoneOffset = timezoneOffset;
	[self updateNSObject:@"timezoneOffset"];
}

-(void)setDate:(id)Date {
	_Date = Date;
	[self updateNSObject:@"Date"];
}

-(void)setCanvasToolsURL:(NSString *)canvasToolsURL {
	_canvasToolsURL = canvasToolsURL;
	[self updateNSObject:@"canvasToolsURL"];
}

-(void)setGetTimezoneOffset:(HIFunction *)getTimezoneOffset {
	HIFunction *oldValue = _getTimezoneOffset;
	if(self.getTimezoneOffset) {
		[self removeObserver:self forKeyPath:@"getTimezoneOffset.isUpdated"];
	}
	_getTimezoneOffset = getTimezoneOffset;
	[self updateHIObject:oldValue newValue:getTimezoneOffset propertyName:@"getTimezoneOffset"];
}

-(void)setUseUTC:(NSNumber *)useUTC {
	_useUTC = useUTC;
	[self updateNSObject:@"useUTC"];
}

@end