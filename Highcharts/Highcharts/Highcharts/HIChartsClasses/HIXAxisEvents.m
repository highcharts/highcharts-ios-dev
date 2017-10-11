#import "HIXAxisEvents.h"

@implementation HIXAxisEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.afterSetExtremes) {
		params[@"afterSetExtremes"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.afterSetExtremes];
	}
	if (self.pointInBreak) {
		params[@"pointInBreak"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.pointInBreak];
	}
	if (self.setExtremes) {
		params[@"setExtremes"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.setExtremes];
	}
	if (self.pointBreak) {
		params[@"pointBreak"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.pointBreak];
	}
	if (self.afterBreaks) {
		params[@"afterBreaks"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.afterBreaks];
	}
	return params;
}

@end