#import "HIChartsJSONSerializableSubclass.h"
#import "HIOptions3d.h"

@implementation HIOptions3d

-(instancetype)init {
	return [super init];
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

-(void)setBeta:(NSNumber *)beta {
	_beta = beta;
	[self updateNSObject:@"beta"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
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