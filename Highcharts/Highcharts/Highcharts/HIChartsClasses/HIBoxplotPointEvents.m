#import "HIBoxplotPointEvents.h"

@implementation HIBoxplotPointEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.remove) {
		params[@"remove"] = self.remove;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
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
	if (self.update) {
		params[@"update"] = self.update;
	}
	return params;
}

@end