#import "HIChartEvents.h"

@implementation HIChartEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.afterPrint) {
		params[@"afterPrint"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.afterPrint];
	}
	if (self.load) {
		params[@"load"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.load];
	}
	if (self.drillup) {
		params[@"drillup"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.drillup];
	}
	if (self.beforePrint) {
		params[@"beforePrint"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.beforePrint];
	}
	if (self.addSeries) {
		params[@"addSeries"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.addSeries];
	}
	if (self.selection) {
		params[@"selection"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.selection];
	}
	if (self.drilldown) {
		params[@"drilldown"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.drilldown];
	}
	if (self.render) {
		params[@"render"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.render];
	}
	if (self.redraw) {
		params[@"redraw"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.redraw];
	}
	if (self.click) {
		params[@"click"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.click];
	}
	if (self.drillupall) {
		params[@"drillupall"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.drillupall];
	}
	return params;
}

@end