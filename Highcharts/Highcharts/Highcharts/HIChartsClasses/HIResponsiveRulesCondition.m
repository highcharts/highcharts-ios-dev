#import "HIResponsiveRulesCondition.h"

@implementation HIResponsiveRulesCondition

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.maxWidth) {
		params[@"maxWidth"] = self.maxWidth;
	}
	if (self.callback) {
		params[@"callback"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.callback];
	}
	if (self.minHeight) {
		params[@"minHeight"] = self.minHeight;
	}
	if (self.minWidth) {
		params[@"minWidth"] = self.minWidth;
	}
	if (self.maxHeight) {
		params[@"maxHeight"] = self.maxHeight;
	}
	return params;
}

@end