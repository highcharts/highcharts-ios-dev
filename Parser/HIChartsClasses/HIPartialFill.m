#import "HIPartialFill.h"

@implementation HIPartialFill

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	return params;
}

@end