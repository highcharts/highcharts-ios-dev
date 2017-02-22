#import "HIColumnrangeDataEvents.h"

@implementation HIColumnrangeDataEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.select) {
		params[@"select"] = self.select;
	}
	if (self.unselect) {
		params[@"unselect"] = self.unselect;
	}
	if (self.update) {
		params[@"update"] = self.update;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.remove) {
		params[@"remove"] = self.remove;
	}
	return params;
}

@end