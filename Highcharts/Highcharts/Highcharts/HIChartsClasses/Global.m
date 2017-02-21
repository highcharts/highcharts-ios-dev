#import "Global.h"

@implementation Global

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.timezone) {
		params[@"timezone"] = self.timezone;
	}
	if (self.Date) {
		params[@"Date"] = self.Date;
	}
	if (self.useUTC) {
		params[@"useUTC"] = self.useUTC;
	}
	if (self.VMLRadialGradientURL) {
		params[@"VMLRadialGradientURL"] = self.VMLRadialGradientURL;
	}
	if (self.getTimezoneOffset) {
		params[@"getTimezoneOffset"] = self.getTimezoneOffset;
	}
	if (self.canvasToolsURL) {
		params[@"canvasToolsURL"] = self.canvasToolsURL;
	}
	if (self.timezoneOffset) {
		params[@"timezoneOffset"] = self.timezoneOffset;
	}
	return params;
}

@end