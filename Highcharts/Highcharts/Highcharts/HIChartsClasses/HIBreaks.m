#import "HIBreaks.h"

@implementation HIBreaks

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.breakSize) {
		params[@"breakSize"] = self.breakSize;
	}
	if (self.repeat) {
		params[@"repeat"] = self.repeat;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	return params;
}

@end