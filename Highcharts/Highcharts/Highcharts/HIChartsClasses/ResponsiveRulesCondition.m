#import "ResponsiveRulesCondition.h"

@implementation ResponsiveRulesCondition

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
		params[@"callback"] = self.callback;
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