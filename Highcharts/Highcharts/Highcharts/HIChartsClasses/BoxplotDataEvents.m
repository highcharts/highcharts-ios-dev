#import "BoxplotDataEvents.h"

@implementation BoxplotDataEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.select) {
		params[@"select"] = self.select;
	}
	if (self.update) {
		params[@"update"] = self.update;
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = self.mouseOut;
	}
	if (self.remove) {
		params[@"remove"] = self.remove;
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = self.mouseOver;
	}
	if (self.click) {
		params[@"click"] = self.click;
	}
	if (self.unselect) {
		params[@"unselect"] = self.unselect;
	}
	return params;
}

@end