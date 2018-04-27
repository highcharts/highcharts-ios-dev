#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnimation.h"

@implementation HIAnimation

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	HIAnimation *copyAnimation = [[HIAnimation allocWithZone: zone] init];
	copyAnimation.duration = [self.duration copyWithZone: zone];
	return copyAnimation;
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