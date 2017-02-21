#import "PlotOptionsBubbleHIPointEvents.h"

@implementation PlotOptionsBubbleHIPointEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.unselect) {
		params[@"unselect"] = self.unselect;
	}
	if (self.update) {
		params[@"update"] = self.update;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.remove) {
		params[@"remove"] = self.remove;
	}
	if (self.select) {
		params[@"select"] = self.select;
	}
	return params;
}

@end