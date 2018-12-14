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
		params[@"animation"] = self.animation;
	}
	if (self.pattern) {
		params[@"pattern"] = self.pattern;
	}
	return params;
}

# pragma mark - Setters

-(void)setAnimation:(NSNumber *)animation {
	_animation = animation;
	[self updateNSObject:@"animation"];
}

-(void)setPattern:(id)pattern {
	_pattern = pattern;
	[self updateNSObject:@"pattern"];
}

@end