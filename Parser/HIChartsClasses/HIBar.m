#import "HIChartsJSONSerializableSubclass.h"
#import "HIBar.h"

@implementation HIBar

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"bar";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBar *copyBar = [[HIBar allocWithZone: zone] init];
	copyBar.dataLabels = [self.dataLabels copyWithZone: zone];
	copyBar.borderRadius = [self.borderRadius copyWithZone: zone];
	copyBar.pointRange = [self.pointRange copyWithZone: zone];
	copyBar.minPointLength = [self.minPointLength copyWithZone: zone];
	copyBar.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyBar.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyBar.states = [self.states copyWithZone: zone];
	copyBar.colors = [self.colors copyWithZone: zone];
	copyBar.softThreshold = [self.softThreshold copyWithZone: zone];
	copyBar.threshold = [self.threshold copyWithZone: zone];
	copyBar.borderColor = [self.borderColor copyWithZone: zone];
	copyBar.edgeColor = [self.edgeColor copyWithZone: zone];
	copyBar.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyBar.tooltip = [self.tooltip copyWithZone: zone];
	copyBar.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyBar.pointWidth = [self.pointWidth copyWithZone: zone];
	copyBar.pointPadding = [self.pointPadding copyWithZone: zone];
	copyBar.groupPadding = [self.groupPadding copyWithZone: zone];
	copyBar.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyBar.crisp = [self.crisp copyWithZone: zone];
	copyBar.depth = [self.depth copyWithZone: zone];
	copyBar.borderWidth = [self.borderWidth copyWithZone: zone];
	copyBar.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyBar.grouping = [self.grouping copyWithZone: zone];
	copyBar.selected = [self.selected copyWithZone: zone];
	copyBar.colorIndex = [self.colorIndex copyWithZone: zone];
	copyBar.point = [self.point copyWithZone: zone];
	copyBar.color = [self.color copyWithZone: zone];
	copyBar.pointInterval = [self.pointInterval copyWithZone: zone];
	copyBar.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyBar.cursor = [self.cursor copyWithZone: zone];
	copyBar.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyBar.negativeColor = [self.negativeColor copyWithZone: zone];
	copyBar.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyBar.label = [self.label copyWithZone: zone];
	copyBar.stacking = [self.stacking copyWithZone: zone];
	copyBar.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyBar.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyBar.events = [self.events copyWithZone: zone];
	copyBar.animationLimit = [self.animationLimit copyWithZone: zone];
	copyBar.definition = [self.definition copyWithZone: zone];
	copyBar.keys = [self.keys copyWithZone: zone];
	copyBar.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyBar.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyBar.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyBar.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyBar.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyBar.shadow = [self.shadow copyWithZone: zone];
	copyBar.animation = [self.animation copyWithZone: zone];
	copyBar.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyBar.zones = [self.zones copyWithZone: zone];
	copyBar.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyBar.visible = [self.visible copyWithZone: zone];
	copyBar.linkedTo = [self.linkedTo copyWithZone: zone];
	copyBar.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyBar.className = [self.className copyWithZone: zone];
	copyBar.pointStart = [self.pointStart copyWithZone: zone];
	copyBar.showInLegend = [self.showInLegend copyWithZone: zone];
	copyBar.data = [self.data copyWithZone: zone];
	copyBar.id = [self.id copyWithZone: zone];
	copyBar.index = [self.index copyWithZone: zone];
	copyBar.legendIndex = [self.legendIndex copyWithZone: zone];
	copyBar.name = [self.name copyWithZone: zone];
	copyBar.stack = [self.stack copyWithZone: zone];
	copyBar.type = [self.type copyWithZone: zone];
	copyBar.xAxis = [self.xAxis copyWithZone: zone];
	copyBar.yAxis = [self.yAxis copyWithZone: zone];
	copyBar.zIndex = [self.zIndex copyWithZone: zone];
	return copyBar;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.groupZPadding) {
		params[@"groupZPadding"] = self.groupZPadding;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getData];
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.crisp) {
		params[@"crisp"] = self.crisp;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	return params;
}

# pragma mark - Setters

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setPointRange:(NSNumber *)pointRange {
	_pointRange = pointRange;
	[self updateNSObject:@"pointRange"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	_minPointLength = minPointLength;
	[self updateNSObject:@"minPointLength"];
}

-(void)setGroupZPadding:(NSNumber *)groupZPadding {
	_groupZPadding = groupZPadding;
	[self updateNSObject:@"groupZPadding"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setEdgeColor:(HIColor *)edgeColor {
	HIColor *oldValue = _edgeColor;
	if(self.edgeColor) {
		[self removeObserver:self forKeyPath:@"edgeColor.isUpdated"];
	}
	_edgeColor = edgeColor;
	[self updateHIObject:oldValue newValue:edgeColor propertyName:@"edgeColor"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setMaxPointWidth:(NSNumber *)maxPointWidth {
	_maxPointWidth = maxPointWidth;
	[self updateNSObject:@"maxPointWidth"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	_pointWidth = pointWidth;
	[self updateNSObject:@"pointWidth"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
}

-(void)setGroupPadding:(NSNumber *)groupPadding {
	_groupPadding = groupPadding;
	[self updateNSObject:@"groupPadding"];
}

-(void)setEdgeWidth:(NSNumber *)edgeWidth {
	_edgeWidth = edgeWidth;
	[self updateNSObject:@"edgeWidth"];
}

-(void)setCrisp:(NSNumber *)crisp {
	_crisp = crisp;
	[self updateNSObject:@"crisp"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setGrouping:(NSNumber *)grouping {
	_grouping = grouping;
	[self updateNSObject:@"grouping"];
}

@end