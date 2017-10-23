#import "HIPareto.h"

@implementation HIPareto

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"pareto";
		return self;
	} else {
		return nil;
	}
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	return params;
}

@end