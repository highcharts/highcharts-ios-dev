#import "HIChartsJSONSerializableSubclass.h"
#import "HILayoutAlgorithm.h"

@implementation HILayoutAlgorithm

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILayoutAlgorithm *copyLayoutAlgorithm = [[HILayoutAlgorithm allocWithZone: zone] init];
	copyLayoutAlgorithm.linkLength = [self.linkLength copyWithZone: zone];
	copyLayoutAlgorithm.gravitationalConstant = [self.gravitationalConstant copyWithZone: zone];
	copyLayoutAlgorithm.maxIterations = [self.maxIterations copyWithZone: zone];
	copyLayoutAlgorithm.initialPositions = [self.initialPositions copyWithZone: zone];
	copyLayoutAlgorithm.friction = [self.friction copyWithZone: zone];
	copyLayoutAlgorithm.enableSimulation = [self.enableSimulation copyWithZone: zone];
	copyLayoutAlgorithm.repulsiveForce = [self.repulsiveForce copyWithZone: zone];
	copyLayoutAlgorithm.attractiveForce = [self.attractiveForce copyWithZone: zone];
	copyLayoutAlgorithm.type = [self.type copyWithZone: zone];
	return copyLayoutAlgorithm;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.linkLength) {
		params[@"linkLength"] = self.linkLength;
	}
	if (self.gravitationalConstant) {
		params[@"gravitationalConstant"] = self.gravitationalConstant;
	}
	if (self.maxIterations) {
		params[@"maxIterations"] = self.maxIterations;
	}
	if (self.initialPositions) {
		params[@"initialPositions"] = self.initialPositions;
	}
	if (self.friction) {
		params[@"friction"] = self.friction;
	}
	if (self.enableSimulation) {
		params[@"enableSimulation"] = self.enableSimulation;
	}
	if (self.repulsiveForce) {
		params[@"repulsiveForce"] = [self.repulsiveForce getFunction];
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

-(void)setLinkLength:(NSNumber *)linkLength {
	NSNumber *oldValue = _linkLength;
	_linkLength = linkLength;
	[self updateNSObject:oldValue newValue:linkLength propertyName:@"linkLength"];
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

-(void)setEnableSimulation:(NSNumber *)enableSimulation {
	NSNumber *oldValue = _enableSimulation;
	_enableSimulation = enableSimulation;
	[self updateNSObject:oldValue newValue:enableSimulation propertyName:@"enableSimulation"];
}

-(void)setRepulsiveForce:(HIFunction *)repulsiveForce {
	HIFunction *oldValue = _repulsiveForce;
	_repulsiveForce = repulsiveForce;
	[self updateHIObject:oldValue newValue:repulsiveForce propertyName:@"repulsiveForce"];
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