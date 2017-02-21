#import "AreaEvents.h"

@implementation AreaEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.checkboxClick) {
		params[@"checkboxClick"] = self.checkboxClick;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.hide) {
		params[@"hide"] = self.hide;
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
	if (self.show) {
		params[@"show"] = self.show;
	}
	return params;
}

@end