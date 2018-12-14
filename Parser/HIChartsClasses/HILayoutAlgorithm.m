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
	_linkLength = linkLength;
	[self updateNSObject:@"linkLength"];
}

-(void)setGravitationalConstant:(NSNumber *)gravitationalConstant {
	_gravitationalConstant = gravitationalConstant;
	[self updateNSObject:@"gravitationalConstant"];
}

-(void)setMaxIterations:(NSNumber *)maxIterations {
	_maxIterations = maxIterations;
	[self updateNSObject:@"maxIterations"];
}

-(void)setInitialPositions:(NSString *)initialPositions {
	_initialPositions = initialPositions;
	[self updateNSObject:@"initialPositions"];
}

-(void)setFriction:(NSNumber *)friction {
	_friction = friction;
	[self updateNSObject:@"friction"];
}

-(void)setEnableSimulation:(NSNumber *)enableSimulation {
	_enableSimulation = enableSimulation;
	[self updateNSObject:@"enableSimulation"];
}

-(void)setRepulsiveForce:(HIFunction *)repulsiveForce {
	HIFunction *oldValue = _repulsiveForce;
	if(self.repulsiveForce) {
		[self removeObserver:self forKeyPath:@"repulsiveForce.isUpdated"];
	}
	_repulsiveForce = repulsiveForce;
	[self updateHIObject:oldValue newValue:repulsiveForce propertyName:@"repulsiveForce"];
}

-(void)setAttractiveForce:(HIFunction *)attractiveForce {
	HIFunction *oldValue = _attractiveForce;
	if(self.attractiveForce) {
		[self removeObserver:self forKeyPath:@"attractiveForce.isUpdated"];
	}
	_attractiveForce = attractiveForce;
	[self updateHIObject:oldValue newValue:attractiveForce propertyName:@"attractiveForce"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

@end