#import "HIChartsJSONSerializableSubclass.h"
#import "HIPointStatesNormalOptionsObject.h"

@implementation HIPointStatesNormalOptionsObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPointStatesNormalOptionsObject *copyPointStatesNormalOptionsObject = [[HIPointStatesNormalOptionsObject allocWithZone: zone] init];
	copyPointStatesNormalOptionsObject.animation = [self.animation copyWithZone: zone];
	return copyPointStatesNormalOptionsObject;
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
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

@end