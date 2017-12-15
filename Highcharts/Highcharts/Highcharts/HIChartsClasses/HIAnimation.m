#import "HIAnimation.h"

@implementation HIAnimation

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

# pragma mark - Setters

-(void)setDuration:(NSNumber *)duration {
	_duration = duration;
	[self updateNSObject:@"duration"];
}

@end