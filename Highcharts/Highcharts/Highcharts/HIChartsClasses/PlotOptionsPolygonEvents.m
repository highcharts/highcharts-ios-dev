#import "PlotOptionsPolygonEvents.h"

@implementation PlotOptionsPolygonEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.checkboxClick) {
		params[@"checkboxClick"] = self.checkboxClick;
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = self.legendItemClick;
	}
	if (self.hide) {
		params[@"hide"] = self.hide;
	}
	if (self.show) {
		params[@"show"] = self.show;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = self.afterAnimate;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	return params;
}

@end