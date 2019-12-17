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
	copyPatternObject.patternIndex = [self.patternIndex copyWithZone: zone];
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
	if (self.patternIndex) {
		params[@"patternIndex"] = self.patternIndex;
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

-(void)setPatternIndex:(NSNumber *)patternIndex {
	NSNumber *oldValue = _patternIndex;
	_patternIndex = patternIndex;
	[self updateNSObject:oldValue newValue:patternIndex propertyName:@"patternIndex"];
}

@end