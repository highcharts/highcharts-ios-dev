#import "PlotOptionsPieEvents.h"

@implementation PlotOptionsPieEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.show) {
		params[@"show"] = self.show;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.checkboxClick) {
		params[@"checkboxClick"] = self.checkboxClick;
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = self.legendItemClick;
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = self.afterAnimate;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.hide) {
		params[@"hide"] = self.hide;
	}
	return params;
}

@end