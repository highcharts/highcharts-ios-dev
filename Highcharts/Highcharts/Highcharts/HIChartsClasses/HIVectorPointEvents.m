#import "HIVectorPointEvents.h"

@implementation HIVectorPointEvents

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.select) {
		params[@"select"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.select];
	}
	if (self.click) {
		params[@"click"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.click];
	}
	if (self.update) {
		params[@"update"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.update];
	}
	if (self.mouseOver) {
		params[@"mouseOver"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.mouseOver];
	}
	if (self.unselect) {
		params[@"unselect"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.unselect];
	}
	if (self.remove) {
		params[@"remove"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.remove];
	}
	if (self.mouseOut) {
		params[@"mouseOut"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.mouseOut];
	}
	return params;
}

@end