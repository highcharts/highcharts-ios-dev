#import "PlotOptionsColumnrangeHIPointEvents.h"

@implementation PlotOptionsColumnrangeHIPointEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.remove) {
		params[@"remove"] = self.remove;
	}
	if (self.update) {
		params[@"update"] = self.update;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.select) {
		params[@"select"] = self.select;
	}
	if (self.unselect) {
		params[@"unselect"] = self.unselect;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	return params;
}

@end