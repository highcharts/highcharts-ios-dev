#import "HIPlotOptionsBarPointEvents.h"

@implementation HIPlotOptionsBarPointEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.click) {
		params[@"click"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.click];
	}
	if (self.unselect) {
		params[@"unselect"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.unselect];
	}
	if (self.update) {
		params[@"update"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.update];
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.mouseOut];
	}
	if (self.remove) {
		params[@"remove"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.remove];
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.mouseOver];
	}
	if (self.select) {
		params[@"select"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.select];
	}
	return params;
}

@end