#import "HIPlotOptionsAreaPointEvents.h"

@implementation HIPlotOptionsAreaPointEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.update) {
		params[@"update"] = self.update;
	}
	if (self.unselect) {
		params[@"unselect"] = self.unselect;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.remove) {
		params[@"remove"] = self.remove;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.select) {
		params[@"select"] = self.select;
	}
	return params;
}

@end