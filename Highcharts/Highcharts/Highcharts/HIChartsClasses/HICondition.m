#import "HICondition.h"

@implementation HICondition

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.callback) {
		params[@"callback"] = [self.callback getFunction];
	}
	if (self.maxWidth) {
		params[@"maxWidth"] = self.maxWidth;
	}
	if (self.maxHeight) {
		params[@"maxHeight"] = self.maxHeight;
	}
	if (self.minWidth) {
		params[@"minWidth"] = self.minWidth;
	}
	if (self.minHeight) {
		params[@"minHeight"] = self.minHeight;
	}
	return params;
}

@end