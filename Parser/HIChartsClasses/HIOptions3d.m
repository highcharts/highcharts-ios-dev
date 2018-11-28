#import "HIChartsJSONSerializableSubclass.h"
#import "HIOptions3d.h"

@implementation HIOptions3d

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIOptions3d *copyOptions3d = [[HIOptions3d allocWithZone: zone] init];
	copyOptions3d.viewDistance = [self.viewDistance copyWithZone: zone];
	copyOptions3d.frame = [self.frame copyWithZone: zone];
	copyOptions3d.axisLabelPosition = [self.axisLabelPosition copyWithZone: zone];
	copyOptions3d.enabled = [self.enabled copyWithZone: zone];
	copyOptions3d.beta = [self.beta copyWithZone: zone];
	copyOptions3d.depth = [self.depth copyWithZone: zone];
	copyOptions3d.fitToPlot = [self.fitToPlot copyWithZone: zone];
	copyOptions3d.alpha = [self.alpha copyWithZone: zone];
	return copyOptions3d;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.viewDistance) {
		params[@"viewDistance"] = self.viewDistance;
	}
	if (self.frame) {
		params[@"frame"] = [self.frame getParams];
	}
	if (self.axisLabelPosition) {
		params[@"axisLabelPosition"] = self.axisLabelPosition;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.beta) {
		params[@"beta"] = self.beta;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.fitToPlot) {
		params[@"fitToPlot"] = self.fitToPlot;
	}
	if (self.alpha) {
		params[@"alpha"] = self.alpha;
	}
	return params;
}

# pragma mark - Setters

-(void)setViewDistance:(NSNumber *)viewDistance {
	NSNumber *oldValue = _viewDistance;
	_viewDistance = viewDistance;
	[self updateNSObject:oldValue newValue:viewDistance propertyName:@"viewDistance"];
}

-(void)setFrame:(HIFrame *)frame {
	HIFrame *oldValue = _frame;
	_frame = frame;
	[self updateHIObject:oldValue newValue:frame propertyName:@"frame"];
}

-(void)setAxisLabelPosition:(NSString *)axisLabelPosition {
	NSString *oldValue = _axisLabelPosition;
	_axisLabelPosition = axisLabelPosition;
	[self updateNSObject:oldValue newValue:axisLabelPosition propertyName:@"axisLabelPosition"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setBeta:(NSNumber *)beta {
	NSNumber *oldValue = _beta;
	_beta = beta;
	[self updateNSObject:oldValue newValue:beta propertyName:@"beta"];
}

-(void)setDepth:(NSNumber *)depth {
	NSNumber *oldValue = _depth;
	_depth = depth;
	[self updateNSObject:oldValue newValue:depth propertyName:@"depth"];
}

-(void)setFitToPlot:(NSNumber *)fitToPlot {
	NSNumber *oldValue = _fitToPlot;
	_fitToPlot = fitToPlot;
	[self updateNSObject:oldValue newValue:fitToPlot propertyName:@"fitToPlot"];
}

-(void)setAlpha:(NSNumber *)alpha {
	NSNumber *oldValue = _alpha;
	_alpha = alpha;
	[self updateNSObject:oldValue newValue:alpha propertyName:@"alpha"];
}

@end