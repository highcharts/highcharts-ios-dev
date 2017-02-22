#import "HILinePointEvents.h"

@implementation HILinePointEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.unselect) {
		params[@"unselect"] = self.unselect;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
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
	return params;
}

@end