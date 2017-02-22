#import "HIHeatmapEvents.h"

@implementation HIHeatmapEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = self.afterAnimate;
	}
	if (self.show) {
		params[@"show"] = self.show;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.checkboxClick) {
		params[@"checkboxClick"] = self.checkboxClick;
	}
	if (self.hide) {
		params[@"hide"] = self.hide;
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = self.legendItemClick;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	return params;
}

@end