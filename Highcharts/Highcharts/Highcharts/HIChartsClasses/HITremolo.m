#import "HIChartsJSONSerializableSubclass.h"
#import "HITremolo.h"

@implementation HITremolo

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITremolo *copyTremolo = [[HITremolo allocWithZone: zone] init];
	copyTremolo.depth = [self.depth copyWithZone: zone];
	copyTremolo.speed = [self.speed copyWithZone: zone];
	return copyTremolo;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.depth) {
		params[@"depth"] = [self.depth getParams];
	}
	if (self.speed) {
		params[@"speed"] = [self.speed getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setDepth:(HIDepth *)depth {
	HIDepth *oldValue = _depth;
	_depth = depth;
	[self updateHIObject:oldValue newValue:depth propertyName:@"depth"];
}

-(void)setSpeed:(HISpeed *)speed {
	HISpeed *oldValue = _speed;
	_speed = speed;
	[self updateHIObject:oldValue newValue:speed propertyName:@"speed"];
}

@end