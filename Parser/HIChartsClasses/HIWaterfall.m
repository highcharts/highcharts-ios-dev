#import "HIChartsJSONSerializableSubclass.h"
#import "HIWaterfall.h"

@implementation HIWaterfall

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"waterfall";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIWaterfall *copyWaterfall = [[HIWaterfall allocWithZone: zone] init];
	copyWaterfall.borderColor = [self.borderColor copyWithZone: zone];
	copyWaterfall.dashStyle = [self.dashStyle copyWithZone: zone];
	copyWaterfall.upColor = [self.upColor copyWithZone: zone];
	copyWaterfall.dataLabels = [self.dataLabels copyWithZone: zone];
	copyWaterfall.states = [self.states copyWithZone: zone];
	copyWaterfall.lineColor = [self.lineColor copyWithZone: zone];
	copyWaterfall.lineWidth = [self.lineWidth copyWithZone: zone];
	copyWaterfall.borderRadius = [self.borderRadius copyWithZone: zone];
	copyWaterfall.pointRange = [self.pointRange copyWithZone: zone];
	copyWaterfall.minPointLength = [self.minPointLength copyWithZone: zone];
	copyWaterfall.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyWaterfall.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyWaterfall.colors = [self.colors copyWithZone: zone];
	copyWaterfall.softThreshold = [self.softThreshold copyWithZone: zone];
	copyWaterfall.threshold = [self.threshold copyWithZone: zone];
	copyWaterfall.edgeColor = [self.edgeColor copyWithZone: zone];
	copyWaterfall.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyWaterfall.tooltip = [self.tooltip copyWithZone: zone];
	copyWaterfall.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyWaterfall.pointWidth = [self.pointWidth copyWithZone: zone];
	copyWaterfall.pointPadding = [self.pointPadding copyWithZone: zone];
	copyWaterfall.groupPadding = [self.groupPadding copyWithZone: zone];
	copyWaterfall.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyWaterfall.crisp = [self.crisp copyWithZone: zone];
	copyWaterfall.depth = [self.depth copyWithZone: zone];
	copyWaterfall.borderWidth = [self.borderWidth copyWithZone: zone];
	copyWaterfall.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyWaterfall.grouping = [self.grouping copyWithZone: zone];
	copyWaterfall.selected = [self.selected copyWithZone: zone];
	copyWaterfall.colorIndex = [self.colorIndex copyWithZone: zone];
	copyWaterfall.point = [self.point copyWithZone: zone];
	copyWaterfall.color = [self.color copyWithZone: zone];
	copyWaterfall.pointInterval = [self.pointInterval copyWithZone: zone];
	copyWaterfall.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyWaterfall.cursor = [self.cursor copyWithZone: zone];
	copyWaterfall.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyWaterfall.negativeColor = [self.negativeColor copyWithZone: zone];
	copyWaterfall.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyWaterfall.label = [self.label copyWithZone: zone];
	copyWaterfall.stacking = [self.stacking copyWithZone: zone];
	copyWaterfall.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyWaterfall.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyWaterfall.events = [self.events copyWithZone: zone];
	copyWaterfall.animationLimit = [self.animationLimit copyWithZone: zone];
	copyWaterfall.definition = [self.definition copyWithZone: zone];
	copyWaterfall.keys = [self.keys copyWithZone: zone];
	copyWaterfall.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyWaterfall.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyWaterfall.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyWaterfall.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyWaterfall.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyWaterfall.shadow = [self.shadow copyWithZone: zone];
	copyWaterfall.animation = [self.animation copyWithZone: zone];
	copyWaterfall.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyWaterfall.zones = [self.zones copyWithZone: zone];
	copyWaterfall.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyWaterfall.visible = [self.visible copyWithZone: zone];
	copyWaterfall.linkedTo = [self.linkedTo copyWithZone: zone];
	copyWaterfall.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyWaterfall.className = [self.className copyWithZone: zone];
	copyWaterfall.pointStart = [self.pointStart copyWithZone: zone];
	copyWaterfall.showInLegend = [self.showInLegend copyWithZone: zone];
	copyWaterfall.data = [self.data copyWithZone: zone];
	copyWaterfall.id = [self.id copyWithZone: zone];
	copyWaterfall.index = [self.index copyWithZone: zone];
	copyWaterfall.legendIndex = [self.legendIndex copyWithZone: zone];
	copyWaterfall.name = [self.name copyWithZone: zone];
	copyWaterfall.stack = [self.stack copyWithZone: zone];
	copyWaterfall.type = [self.type copyWithZone: zone];
	copyWaterfall.xAxis = [self.xAxis copyWithZone: zone];
	copyWaterfall.yAxis = [self.yAxis copyWithZone: zone];
	copyWaterfall.zIndex = [self.zIndex copyWithZone: zone];
	return copyWaterfall;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.upColor) {
		params[@"upColor"] = [self.upColor getData];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
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

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setUpColor:(HIColor *)upColor {
	HIColor *oldValue = _upColor;
	if(self.upColor) {
		[self removeObserver:self forKeyPath:@"upColor.isUpdated"];
	}
	_upColor = upColor;
	[self updateHIObject:oldValue newValue:upColor propertyName:@"upColor"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

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