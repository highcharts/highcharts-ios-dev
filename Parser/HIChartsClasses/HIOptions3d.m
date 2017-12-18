#import "HIChartsJSONSerializableSubclass.h"
#import "HIOptions3d.h"

@implementation HIOptions3d

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.beta) {
		params[@"beta"] = self.beta;
	}
	if (self.axisLabelPosition) {
		params[@"axisLabelPosition"] = self.axisLabelPosition;
	}
	if (self.fitToPlot) {
		params[@"fitToPlot"] = self.fitToPlot;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.viewDistance) {
		params[@"viewDistance"] = self.viewDistance;
	}
	if (self.frame) {
		params[@"frame"] = [self.frame getParams];
	}
	if (self.alpha) {
		params[@"alpha"] = self.alpha;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

# pragma mark - Setters

-(void)setBeta:(NSNumber *)beta {
	_beta = beta;
	[self updateNSObject:@"beta"];
}

-(void)setAxisLabelPosition:(NSString *)axisLabelPosition {
	_axisLabelPosition = axisLabelPosition;
	[self updateNSObject:@"axisLabelPosition"];
}

-(void)setFitToPlot:(NSNumber *)fitToPlot {
	_fitToPlot = fitToPlot;
	[self updateNSObject:@"fitToPlot"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
}

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

-(void)setAlpha:(NSNumber *)alpha {
	_alpha = alpha;
	[self updateNSObject:@"alpha"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

@end