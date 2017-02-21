#import "YAxisBreaks.h"

@implementation YAxisBreaks

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.breakSize) {
		params[@"breakSize"] = self.breakSize;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.repeat) {
		params[@"repeat"] = self.repeat;
	}
	return params;
}

@end