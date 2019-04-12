#import "HIChartsJSONSerializableSubclass.h"
#import "HIParentNodeOptions.h"

@implementation HIParentNodeOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIParentNodeOptions *copyParentNodeOptions = [[HIParentNodeOptions allocWithZone: zone] init];
	copyParentNodeOptions.seriesInteraction = [self.seriesInteraction copyWithZone: zone];
	copyParentNodeOptions.gravitationalConstant = [self.gravitationalConstant copyWithZone: zone];
	copyParentNodeOptions.maxIterations = [self.maxIterations copyWithZone: zone];
	copyParentNodeOptions.initialPositionRadius = [self.initialPositionRadius copyWithZone: zone];
	copyParentNodeOptions.maxSpeed = [self.maxSpeed copyWithZone: zone];
	copyParentNodeOptions.marker = [self.marker copyWithZone: zone];
	copyParentNodeOptions.initialPositions = [self.initialPositions copyWithZone: zone];
	copyParentNodeOptions.friction = [self.friction copyWithZone: zone];
	copyParentNodeOptions.integration = [self.integration copyWithZone: zone];
	copyParentNodeOptions.type = [self.type copyWithZone: zone];
	return copyParentNodeOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.seriesInteraction) {
		params[@"seriesInteraction"] = self.seriesInteraction;
	}
	if (self.gravitationalConstant) {
		params[@"gravitationalConstant"] = self.gravitationalConstant;
	}
	if (self.maxIterations) {
		params[@"maxIterations"] = self.maxIterations;
	}
	if (self.initialPositionRadius) {
		params[@"initialPositionRadius"] = self.initialPositionRadius;
	}
	if (self.maxSpeed) {
		params[@"maxSpeed"] = self.maxSpeed;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.initialPositions) {
		params[@"initialPositions"] = self.initialPositions;
	}
	if (self.friction) {
		params[@"friction"] = self.friction;
	}
	if (self.integration) {
		params[@"integration"] = self.integration;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	return params;
}

# pragma mark - Setters

-(void)setSeriesInteraction:(NSNumber *)seriesInteraction {
	NSNumber *oldValue = _seriesInteraction;
	_seriesInteraction = seriesInteraction;
	[self updateNSObject:oldValue newValue:seriesInteraction propertyName:@"seriesInteraction"];
}

-(void)setGravitationalConstant:(NSNumber *)gravitationalConstant {
	NSNumber *oldValue = _gravitationalConstant;
	_gravitationalConstant = gravitationalConstant;
	[self updateNSObject:oldValue newValue:gravitationalConstant propertyName:@"gravitationalConstant"];
}

-(void)setMaxIterations:(NSNumber *)maxIterations {
	NSNumber *oldValue = _maxIterations;
	_maxIterations = maxIterations;
	[self updateNSObject:oldValue newValue:maxIterations propertyName:@"maxIterations"];
}

-(void)setInitialPositionRadius:(NSNumber *)initialPositionRadius {
	NSNumber *oldValue = _initialPositionRadius;
	_initialPositionRadius = initialPositionRadius;
	[self updateNSObject:oldValue newValue:initialPositionRadius propertyName:@"initialPositionRadius"];
}

-(void)setMaxSpeed:(NSNumber *)maxSpeed {
	NSNumber *oldValue = _maxSpeed;
	_maxSpeed = maxSpeed;
	[self updateNSObject:oldValue newValue:maxSpeed propertyName:@"maxSpeed"];
}

-(void)setMarker:(HIMarker *)marker {
	HIMarker *oldValue = _marker;
	_marker = marker;
	[self updateHIObject:oldValue newValue:marker propertyName:@"marker"];
}

-(void)setInitialPositions:(NSString *)initialPositions {
	NSString *oldValue = _initialPositions;
	_initialPositions = initialPositions;
	[self updateNSObject:oldValue newValue:initialPositions propertyName:@"initialPositions"];
}

-(void)setFriction:(NSNumber *)friction {
	NSNumber *oldValue = _friction;
	_friction = friction;
	[self updateNSObject:oldValue newValue:friction propertyName:@"friction"];
}

-(void)setIntegration:(NSString *)integration {
	NSString *oldValue = _integration;
	_integration = integration;
	[self updateNSObject:oldValue newValue:integration propertyName:@"integration"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

@end