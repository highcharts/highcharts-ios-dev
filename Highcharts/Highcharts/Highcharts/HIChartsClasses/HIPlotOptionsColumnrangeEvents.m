#import "HIPlotOptionsColumnrangeEvents.h"

@implementation HIPlotOptionsColumnrangeEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.checkboxClick) {
		params[@"checkboxClick"] = self.checkboxClick;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = self.afterAnimate;
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = self.legendItemClick;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.hide) {
		params[@"hide"] = self.hide;
	}
	if (self.show) {
		params[@"show"] = self.show;
	}
	return params;
}

@end