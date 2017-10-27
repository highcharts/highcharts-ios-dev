#import "HIGauge.h"

@implementation HIGauge

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"gauge";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.wrap) {
		params[@"wrap"] = self.wrap;
	}
	if (self.overshoot) {
		params[@"overshoot"] = self.overshoot;
	}
	if (self.dial) {
		params[@"dial"] = [self.dial getParams];
	}
	if (self.pivot) {
		params[@"pivot"] = [self.pivot getParams];
	}
	return params;
}

@end