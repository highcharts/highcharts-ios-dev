#import "PlotOptionsFunnelEvents.h"

@implementation PlotOptionsFunnelEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.hide) {
		params[@"hide"] = self.hide;
	}
	if (self.show) {
		params[@"show"] = self.show;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = self.legendItemClick;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = self.afterAnimate;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.checkboxClick) {
		params[@"checkboxClick"] = self.checkboxClick;
	}
	return params;
}

@end