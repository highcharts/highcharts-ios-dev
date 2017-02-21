#import "GaugeHIPointEvents.h"

@implementation GaugeHIPointEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.select) {
		params[@"select"] = self.select;
	}
	if (self.update) {
		params[@"update"] = self.update;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.unselect) {
		params[@"unselect"] = self.unselect;
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