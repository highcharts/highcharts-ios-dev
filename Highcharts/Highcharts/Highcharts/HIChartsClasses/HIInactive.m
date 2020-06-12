#import "HIChartsJSONSerializableSubclass.h"
#import "HIInactive.h"

@implementation HIInactive

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIInactive *copyInactive = [[HIInactive allocWithZone: zone] init];
	copyInactive.opacity = [self.opacity copyWithZone: zone];
	copyInactive.animation = [self.animation copyWithZone: zone];
	copyInactive.enabled = [self.enabled copyWithZone: zone];
	copyInactive.linkOpacity = [self.linkOpacity copyWithZone: zone];
	return copyInactive;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.linkOpacity) {
		params[@"linkOpacity"] = self.linkOpacity;
	}
	return params;
}

# pragma mark - Setters

-(void)setOpacity:(NSNumber *)opacity {
	NSNumber *oldValue = _opacity;
	_opacity = opacity;
	[self updateNSObject:oldValue newValue:opacity propertyName:@"opacity"];
}

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setLinkOpacity:(NSNumber *)linkOpacity {
	NSNumber *oldValue = _linkOpacity;
	_linkOpacity = linkOpacity;
	[self updateNSObject:oldValue newValue:linkOpacity propertyName:@"linkOpacity"];
}

@end
