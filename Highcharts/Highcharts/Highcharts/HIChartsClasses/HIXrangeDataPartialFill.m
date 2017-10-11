#import "HIXrangeDataPartialFill.h"

@implementation HIXrangeDataPartialFill

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fill) {
		params[@"fill"] = [self.fill getData];
	}
	if (self.amount) {
		params[@"amount"] = self.amount;
	}
	return params;
}

@end