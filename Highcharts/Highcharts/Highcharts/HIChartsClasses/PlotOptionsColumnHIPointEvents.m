#import "PlotOptionsColumnHIPointEvents.h"

@implementation PlotOptionsColumnHIPointEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.update) {
		params[@"update"] = self.update;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.remove) {
		params[@"remove"] = self.remove;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.select) {
		params[@"select"] = self.select;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.unselect) {
		params[@"unselect"] = self.unselect;
	}
	return params;
}

@end