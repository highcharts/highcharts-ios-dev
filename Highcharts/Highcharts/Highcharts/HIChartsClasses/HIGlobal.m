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
		params[@"getTimezoneOffset"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.getTimezoneOffset];
	}
	if (self.useUTC) {
		params[@"useUTC"] = self.useUTC;
	}
	return params;
}

@end