#import "HIPlotOptionsColumnrangeEvents.h"

@implementation HIPlotOptionsColumnrangeEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.checkboxClick) {
		params[@"checkboxClick"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.checkboxClick];
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.mouseOut];
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.legendItemClick];
	}
	if (self.hide) {
		params[@"hide"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.hide];
	}
	if (self.click) {
		params[@"click"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.click];
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.mouseOver];
	}
	if (self.show) {
		params[@"show"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.show];
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.afterAnimate];
	}
	return params;
}

@end