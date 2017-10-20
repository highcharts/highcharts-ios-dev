#import "HIEvents.h"

@implementation HIEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mouseOver) {
		params[@"mouseOver"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.mouseOver];
	}
	if (self.click) {
		params[@"click"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.click];
	}
	if (self.select) {
		params[@"select"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.select];
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.mouseOut];
	}
	if (self.unselect) {
		params[@"unselect"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.unselect];
	}
	if (self.update) {
		params[@"update"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.update];
	}
	if (self.remove) {
		params[@"remove"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.remove];
	}
	if (self.show) {
		params[@"show"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.show];
	}
	if (self.checkboxClick) {
		params[@"checkboxClick"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.checkboxClick];
	}
	if (self.hide) {
		params[@"hide"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.hide];
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.afterAnimate];
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.legendItemClick];
	}
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
	if (self.selection) {
		params[@"selection"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.selection];
	}
	if (self.render) {
		params[@"render"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.render];
	}
	if (self.load) {
		params[@"load"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.load];
	}
	if (self.drillupall) {
		params[@"drillupall"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.drillupall];
	}
	if (self.addSeries) {
		params[@"addSeries"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.addSeries];
	}
	if (self.drillup) {
		params[@"drillup"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.drillup];
	}
	if (self.redraw) {
		params[@"redraw"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.redraw];
	}
	if (self.drilldown) {
		params[@"drilldown"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.drilldown];
	}
	if (self.afterPrint) {
		params[@"afterPrint"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.afterPrint];
	}
	if (self.beforePrint) {
		params[@"beforePrint"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.beforePrint];
	}
	return params;
}

@end