#import "PolygonEvents.h"

@implementation PolygonEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.legendItemClick) {
		params[@"legendItemClick"] = self.legendItemClick;
	}
	if (self.afterAnimate) {
		params[@"afterAnimate"] = self.afterAnimate;
	}
	if (self.hide) {
		params[@"hide"] = self.hide;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.show) {
		params[@"show"] = self.show;
	}
	if (self.checkboxClick) {
		params[@"checkboxClick"] = self.checkboxClick;
	}
	return params;
}

@end