#import "HIPlotOptionsScatterPointEvents.h"

@implementation HIPlotOptionsScatterPointEvents

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
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.update) {
		params[@"update"] = self.update;
	}
	if (self.select) {
		params[@"select"] = self.select;
	}
	if (self.remove) {
		params[@"remove"] = self.remove;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	return params;
}

@end