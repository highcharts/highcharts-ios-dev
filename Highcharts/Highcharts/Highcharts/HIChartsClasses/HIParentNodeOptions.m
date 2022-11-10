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
	copyParentNodeOptions.approximation = [self.approximation copyWithZone: zone];
	copyParentNodeOptions.enableSimulation = [self.enableSimulation copyWithZone: zone];
	copyParentNodeOptions.linkLength = [self.linkLength copyWithZone: zone];
	copyParentNodeOptions.repulsiveForce = [self.repulsiveForce copyWithZone: zone];
	copyParentNodeOptions.theta = [self.theta copyWithZone: zone];
	copyParentNodeOptions.attractiveForce = [self.attractiveForce copyWithZone: zone];
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
	if (self.approximation) {
		params[@"approximation"] = self.approximation;
	}
	if (self.enableSimulation) {
		params[@"enableSimulation"] = self.enableSimulation;
	}
	if (self.linkLength) {
		params[@"linkLength"] = self.linkLength;
	}
	if (self.repulsiveForce) {
		params[@"repulsiveForce"] = [self.repulsiveForce getFunction];
	}
	if (self.theta) {
		params[@"theta"] = self.theta;
	}
	if (self.attractiveForce) {
		params[@"attractiveForce"] = [self.attractiveForce getFunction];
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

-(void)setApproximation:(NSString *)approximation {
	NSString *oldValue = _approximation;
	_approximation = approximation;
	[self updateNSObject:oldValue newValue:approximation propertyName:@"approximation"];
}

-(void)setEnableSimulation:(NSNumber *)enableSimulation {
	NSNumber *oldValue = _enableSimulation;
	_enableSimulation = enableSimulation;
	[self updateNSObject:oldValue newValue:enableSimulation propertyName:@"enableSimulation"];
}

-(void)setLinkLength:(NSNumber *)linkLength {
	NSNumber *oldValue = _linkLength;
	_linkLength = linkLength;
	[self updateNSObject:oldValue newValue:linkLength propertyName:@"linkLength"];
}

-(void)setRepulsiveForce:(HIFunction *)repulsiveForce {
	HIFunction *oldValue = _repulsiveForce;
	_repulsiveForce = repulsiveForce;
	[self updateHIObject:oldValue newValue:repulsiveForce propertyName:@"repulsiveForce"];
}

-(void)setTheta:(NSNumber *)theta {
	NSNumber *oldValue = _theta;
	_theta = theta;
	[self updateNSObject:oldValue newValue:theta propertyName:@"theta"];
}

-(void)setAttractiveForce:(HIFunction *)attractiveForce {
	HIFunction *oldValue = _attractiveForce;
	_attractiveForce = attractiveForce;
	[self updateHIObject:oldValue newValue:attractiveForce propertyName:@"attractiveForce"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

@end