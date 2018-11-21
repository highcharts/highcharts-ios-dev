#import "HIChartsJSONSerializableSubclass.h"
#import "HINormal.h"

@implementation HINormal

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HINormal *copyNormal = [[HINormal allocWithZone: zone] init];
	copyNormal.animation = [self.animation copyWithZone: zone];
	return copyNormal;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	if(self.animation) {
		[self removeObserver:self forKeyPath:@"animation.isUpdated"];
	}
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

@end