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
	copyOptions3d.depth = [self.depth copyWithZone: zone];
	copyOptions3d.beta = [self.beta copyWithZone: zone];
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
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.beta) {
		params[@"beta"] = self.beta;
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
	_viewDistance = viewDistance;
	[self updateNSObject:@"viewDistance"];
}

-(void)setFrame:(HIFrame *)frame {
	HIFrame *oldValue = _frame;
	if(self.frame) {
		[self removeObserver:self forKeyPath:@"frame.isUpdated"];
	}
	_frame = frame;
	[self updateHIObject:oldValue newValue:frame propertyName:@"frame"];
}

-(void)setAxisLabelPosition:(NSString *)axisLabelPosition {
	_axisLabelPosition = axisLabelPosition;
	[self updateNSObject:@"axisLabelPosition"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
}

-(void)setBeta:(NSNumber *)beta {
	_beta = beta;
	[self updateNSObject:@"beta"];
}

-(void)setFitToPlot:(NSNumber *)fitToPlot {
	_fitToPlot = fitToPlot;
	[self updateNSObject:@"fitToPlot"];
}

-(void)setAlpha:(NSNumber *)alpha {
	_alpha = alpha;
	[self updateNSObject:@"alpha"];
}

@end