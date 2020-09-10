#import "HIChartsJSONSerializableSubclass.h"
#import "HIAnimation.h"

@implementation HIAnimation

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIAnimation *copyAnimation = [[HIAnimation allocWithZone: zone] init];
	copyAnimation.defer = [self.defer copyWithZone: zone];
	copyAnimation.duration = [self.duration copyWithZone: zone];
	return copyAnimation;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.duration) {
		params[@"duration"] = self.duration;
	}
	return params;
}

# pragma mark - Setters

-(void)setDefer:(NSNumber *)defer {
	NSNumber *oldValue = _defer;
	_defer = defer;
	[self updateNSObject:oldValue newValue:defer propertyName:@"defer"];
}

-(void)setDuration:(NSNumber *)duration {
	NSNumber *oldValue = _duration;
	_duration = duration;
	[self updateNSObject:oldValue newValue:duration propertyName:@"duration"];
}

@end