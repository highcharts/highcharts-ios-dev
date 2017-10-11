#import "HIColumnrangeStatesHoverAnimation.h"

@implementation HIColumnrangeStatesHoverAnimation

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.duration) {
		params[@"duration"] = self.duration;
	}
	return params;
}

@end