#import "HIPlotOptionsGaugePointEvents.h"

@implementation HIPlotOptionsGaugePointEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.select) {
		params[@"select"] = self.select;
	}
	if (self.remove) {
		params[@"remove"] = self.remove;
	}
	if (self.update) {
		params[@"update"] = self.update;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.unselect) {
		params[@"unselect"] = self.unselect;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	return params;
}

@end