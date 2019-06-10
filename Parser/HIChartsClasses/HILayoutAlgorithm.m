#import "HIChartsJSONSerializableSubclass.h"
#import "HILayoutAlgorithm.h"

@implementation HILayoutAlgorithm

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILayoutAlgorithm *copyLayoutAlgorithm = [[HILayoutAlgorithm allocWithZone: zone] init];
	copyLayoutAlgorithm.seriesInteraction = [self.seriesInteraction copyWithZone: zone];
	copyLayoutAlgorithm.gravitationalConstant = [self.gravitationalConstant copyWithZone: zone];
	copyLayoutAlgorithm.maxIterations = [self.maxIterations copyWithZone: zone];
	copyLayoutAlgorithm.initialPositions = [self.initialPositions copyWithZone: zone];
	copyLayoutAlgorithm.parentNodeOptions = [self.parentNodeOptions copyWithZone: zone];
	copyLayoutAlgorithm.initialPositionRadius = [self.initialPositionRadius copyWithZone: zone];
	copyLayoutAlgorithm.friction = [self.friction copyWithZone: zone];
	copyLayoutAlgorithm.dragBetweenSeries = [self.dragBetweenSeries copyWithZone: zone];
	copyLayoutAlgorithm.maxSpeed = [self.maxSpeed copyWithZone: zone];
	copyLayoutAlgorithm.enableSimulation = [self.enableSimulation copyWithZone: zone];
	copyLayoutAlgorithm.bubblePadding = [self.bubblePadding copyWithZone: zone];
	copyLayoutAlgorithm.splitSeries = [self.splitSeries copyWithZone: zone];
	copyLayoutAlgorithm.parentNodeLimit = [self.parentNodeLimit copyWithZone: zone];
	copyLayoutAlgorithm.integration = [self.integration copyWithZone: zone];
	copyLayoutAlgorithm.linkLength = [self.linkLength copyWithZone: zone];
	copyLayoutAlgorithm.type = [self.type copyWithZone: zone];
	copyLayoutAlgorithm.approximation = [self.approximation copyWithZone: zone];
	copyLayoutAlgorithm.repulsiveForce = [self.repulsiveForce copyWithZone: zone];
	copyLayoutAlgorithm.theta = [self.theta copyWithZone: zone];
	copyLayoutAlgorithm.attractiveForce = [self.attractiveForce copyWithZone: zone];
	return copyLayoutAlgorithm;
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
	if (self.initialPositions) {
		params[@"initialPositions"] = self.initialPositions;
	}
	if (self.parentNodeOptions) {
		params[@"parentNodeOptions"] = [self.parentNodeOptions getParams];
	}
	if (self.initialPositionRadius) {
		params[@"initialPositionRadius"] = self.initialPositionRadius;
	}
	if (self.friction) {
		params[@"friction"] = self.friction;
	}
	if (self.dragBetweenSeries) {
		params[@"dragBetweenSeries"] = self.dragBetweenSeries;
	}
	if (self.maxSpeed) {
		params[@"maxSpeed"] = self.maxSpeed;
	}
	if (self.enableSimulation) {
		params[@"enableSimulation"] = self.enableSimulation;
	}
	if (self.bubblePadding) {
		params[@"bubblePadding"] = self.bubblePadding;
	}
	if (self.splitSeries) {
		params[@"splitSeries"] = self.splitSeries;
	}
	if (self.parentNodeLimit) {
		params[@"parentNodeLimit"] = self.parentNodeLimit;
	}
	if (self.integration) {
		params[@"integration"] = self.integration;
	}
	if (self.linkLength) {
		params[@"linkLength"] = self.linkLength;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.approximation) {
		params[@"approximation"] = self.approximation;
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

-(void)setInitialPositions:(NSString *)initialPositions {
	NSString *oldValue = _initialPositions;
	_initialPositions = initialPositions;
	[self updateNSObject:oldValue newValue:initialPositions propertyName:@"initialPositions"];
}

-(void)setParentNodeOptions:(HIParentNodeOptions *)parentNodeOptions {
	HIParentNodeOptions *oldValue = _parentNodeOptions;
	_parentNodeOptions = parentNodeOptions;
	[self updateHIObject:oldValue newValue:parentNodeOptions propertyName:@"parentNodeOptions"];
}

-(void)setInitialPositionRadius:(NSNumber *)initialPositionRadius {
	NSNumber *oldValue = _initialPositionRadius;
	_initialPositionRadius = initialPositionRadius;
	[self updateNSObject:oldValue newValue:initialPositionRadius propertyName:@"initialPositionRadius"];
}

-(void)setFriction:(NSNumber *)friction {
	NSNumber *oldValue = _friction;
	_friction = friction;
	[self updateNSObject:oldValue newValue:friction propertyName:@"friction"];
}

-(void)setDragBetweenSeries:(NSNumber *)dragBetweenSeries {
	NSNumber *oldValue = _dragBetweenSeries;
	_dragBetweenSeries = dragBetweenSeries;
	[self updateNSObject:oldValue newValue:dragBetweenSeries propertyName:@"dragBetweenSeries"];
}

-(void)setMaxSpeed:(NSNumber *)maxSpeed {
	NSNumber *oldValue = _maxSpeed;
	_maxSpeed = maxSpeed;
	[self updateNSObject:oldValue newValue:maxSpeed propertyName:@"maxSpeed"];
}

-(void)setEnableSimulation:(NSNumber *)enableSimulation {
	NSNumber *oldValue = _enableSimulation;
	_enableSimulation = enableSimulation;
	[self updateNSObject:oldValue newValue:enableSimulation propertyName:@"enableSimulation"];
}

-(void)setBubblePadding:(NSNumber *)bubblePadding {
	NSNumber *oldValue = _bubblePadding;
	_bubblePadding = bubblePadding;
	[self updateNSObject:oldValue newValue:bubblePadding propertyName:@"bubblePadding"];
}

-(void)setSplitSeries:(NSString *)splitSeries {
	NSString *oldValue = _splitSeries;
	_splitSeries = splitSeries;
	[self updateNSObject:oldValue newValue:splitSeries propertyName:@"splitSeries"];
}

-(void)setParentNodeLimit:(NSNumber *)parentNodeLimit {
	NSNumber *oldValue = _parentNodeLimit;
	_parentNodeLimit = parentNodeLimit;
	[self updateNSObject:oldValue newValue:parentNodeLimit propertyName:@"parentNodeLimit"];
}

-(void)setIntegration:(NSString *)integration {
	NSString *oldValue = _integration;
	_integration = integration;
	[self updateNSObject:oldValue newValue:integration propertyName:@"integration"];
}

-(void)setLinkLength:(NSNumber *)linkLength {
	NSNumber *oldValue = _linkLength;
	_linkLength = linkLength;
	[self updateNSObject:oldValue newValue:linkLength propertyName:@"linkLength"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setApproximation:(NSString *)approximation {
	NSString *oldValue = _approximation;
	_approximation = approximation;
	[self updateNSObject:oldValue newValue:approximation propertyName:@"approximation"];
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

@end