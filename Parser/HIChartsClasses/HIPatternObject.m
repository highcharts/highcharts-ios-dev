#import "HIChartsJSONSerializableSubclass.h"
#import "HIPatternObject.h"

@implementation HIPatternObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPatternObject *copyPatternObject = [[HIPatternObject allocWithZone: zone] init];
	copyPatternObject.animation = [self.animation copyWithZone: zone];
	copyPatternObject.pattern = [self.pattern copyWithZone: zone];
	return copyPatternObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.animation) {
		params[@"animation"] = [self.animation getParams];
	}
	if (self.pattern) {
		params[@"pattern"] = [self.pattern getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setAnimation:(HIAnimationOptionsObject *)animation {
	HIAnimationOptionsObject *oldValue = _animation;
	_animation = animation;
	[self updateHIObject:oldValue newValue:animation propertyName:@"animation"];
}

-(void)setPattern:(HIPatternOptionsObject *)pattern {
	HIPatternOptionsObject *oldValue = _pattern;
	_pattern = pattern;
	[self updateHIObject:oldValue newValue:pattern propertyName:@"pattern"];
}

@end