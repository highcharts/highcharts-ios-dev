#import "HIWordcloudEvents.h"

@implementation HIWordcloudEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.click) {
		params[@"click"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.click];
	}
	if (self.hide) {
		params[@"hide"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.hide];
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.mouseOut];
	}
	if (self.checkboxClick) {
		params[@"checkboxClick"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.checkboxClick];
	}
	if (self.show) {
		params[@"show"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.show];
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.afterAnimate];
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.mouseOver];
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.legendItemClick];
	}
	return params;
}

@end