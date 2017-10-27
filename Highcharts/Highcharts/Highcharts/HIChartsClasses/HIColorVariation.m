#import "HIColorVariation.h"

@implementation HIColorVariation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.key) {
		params[@"key"] = self.key;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	return params;
}

@end