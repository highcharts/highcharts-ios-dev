#import "HIChartsJSONSerializableSubclass.h"
#import "HIColumn.h"

@implementation HIColumn

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"column";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIColumn *copyColumn = [[HIColumn allocWithZone: zone] init];
	copyColumn.pointPadding = [self.pointPadding copyWithZone: zone];
	copyColumn.borderRadius = [self.borderRadius copyWithZone: zone];
	copyColumn.pointRange = [self.pointRange copyWithZone: zone];
	copyColumn.minPointLength = [self.minPointLength copyWithZone: zone];
	copyColumn.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyColumn.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyColumn.states = [self.states copyWithZone: zone];
	copyColumn.colors = [self.colors copyWithZone: zone];
	copyColumn.softThreshold = [self.softThreshold copyWithZone: zone];
	copyColumn.threshold = [self.threshold copyWithZone: zone];
	copyColumn.borderColor = [self.borderColor copyWithZone: zone];
	copyColumn.edgeColor = [self.edgeColor copyWithZone: zone];
	copyColumn.tooltip = [self.tooltip copyWithZone: zone];
	copyColumn.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyColumn.pointWidth = [self.pointWidth copyWithZone: zone];
	copyColumn.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyColumn.groupPadding = [self.groupPadding copyWithZone: zone];
	copyColumn.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyColumn.crisp = [self.crisp copyWithZone: zone];
	copyColumn.dataLabels = [self.dataLabels copyWithZone: zone];
	copyColumn.depth = [self.depth copyWithZone: zone];
	copyColumn.borderWidth = [self.borderWidth copyWithZone: zone];
	copyColumn.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyColumn.grouping = [self.grouping copyWithZone: zone];
	copyColumn.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyColumn.selected = [self.selected copyWithZone: zone];
	copyColumn.colorIndex = [self.colorIndex copyWithZone: zone];
	copyColumn.clip = [self.clip copyWithZone: zone];
	copyColumn.negativeColor = [self.negativeColor copyWithZone: zone];
	copyColumn.color = [self.color copyWithZone: zone];
	copyColumn.pointInterval = [self.pointInterval copyWithZone: zone];
	copyColumn.colorKey = [self.colorKey copyWithZone: zone];
	copyColumn.dragDrop = [self.dragDrop copyWithZone: zone];
	copyColumn.point = [self.point copyWithZone: zone];
	copyColumn.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyColumn.cursor = [self.cursor copyWithZone: zone];
	copyColumn.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyColumn.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyColumn.label = [self.label copyWithZone: zone];
	copyColumn.stacking = [self.stacking copyWithZone: zone];
	copyColumn.animation = [self.animation copyWithZone: zone];
	copyColumn.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyColumn.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyColumn.boostBlending = [self.boostBlending copyWithZone: zone];
	copyColumn.events = [self.events copyWithZone: zone];
	copyColumn.opacity = [self.opacity copyWithZone: zone];
	copyColumn.animationLimit = [self.animationLimit copyWithZone: zone];
	copyColumn.definition = [self.definition copyWithZone: zone];
	copyColumn.keys = [self.keys copyWithZone: zone];
	copyColumn.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyColumn.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyColumn.accessibility = [self.accessibility copyWithZone: zone];
	copyColumn.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyColumn.shadow = [self.shadow copyWithZone: zone];
	copyColumn.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyColumn.colorAxis = [self.colorAxis copyWithZone: zone];
	copyColumn.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyColumn.zones = [self.zones copyWithZone: zone];
	copyColumn.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyColumn.visible = [self.visible copyWithZone: zone];
	copyColumn.linkedTo = [self.linkedTo copyWithZone: zone];
	copyColumn.className = [self.className copyWithZone: zone];
	copyColumn.pointStart = [self.pointStart copyWithZone: zone];
	copyColumn.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyColumn.showInLegend = [self.showInLegend copyWithZone: zone];
	copyColumn.data = [self.data copyWithZone: zone];
	copyColumn.id = [self.id copyWithZone: zone];
	copyColumn.index = [self.index copyWithZone: zone];
	copyColumn.legendIndex = [self.legendIndex copyWithZone: zone];
	copyColumn.name = [self.name copyWithZone: zone];
	copyColumn.stack = [self.stack copyWithZone: zone];
	copyColumn.type = [self.type copyWithZone: zone];
	copyColumn.xAxis = [self.xAxis copyWithZone: zone];
	copyColumn.yAxis = [self.yAxis copyWithZone: zone];
	copyColumn.zIndex = [self.zIndex copyWithZone: zone];
	return copyColumn;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
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
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getData];
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
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

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setPointRange:(NSNumber *)pointRange {
	NSNumber *oldValue = _pointRange;
	_pointRange = pointRange;
	[self updateNSObject:oldValue newValue:pointRange propertyName:@"pointRange"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	NSNumber *oldValue = _minPointLength;
	_minPointLength = minPointLength;
	[self updateNSObject:oldValue newValue:minPointLength propertyName:@"minPointLength"];
}

-(void)setGroupZPadding:(NSNumber *)groupZPadding {
	NSNumber *oldValue = _groupZPadding;
	_groupZPadding = groupZPadding;
	[self updateNSObject:oldValue newValue:groupZPadding propertyName:@"groupZPadding"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setEdgeColor:(HIColor *)edgeColor {
	HIColor *oldValue = _edgeColor;
	_edgeColor = edgeColor;
	[self updateHIObject:oldValue newValue:edgeColor propertyName:@"edgeColor"];
}

-(void)setMaxPointWidth:(NSNumber *)maxPointWidth {
	NSNumber *oldValue = _maxPointWidth;
	_maxPointWidth = maxPointWidth;
	[self updateNSObject:oldValue newValue:maxPointWidth propertyName:@"maxPointWidth"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	NSNumber *oldValue = _pointWidth;
	_pointWidth = pointWidth;
	[self updateNSObject:oldValue newValue:pointWidth propertyName:@"pointWidth"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setGroupPadding:(NSNumber *)groupPadding {
	NSNumber *oldValue = _groupPadding;
	_groupPadding = groupPadding;
	[self updateNSObject:oldValue newValue:groupPadding propertyName:@"groupPadding"];
}

-(void)setEdgeWidth:(NSNumber *)edgeWidth {
	NSNumber *oldValue = _edgeWidth;
	_edgeWidth = edgeWidth;
	[self updateNSObject:oldValue newValue:edgeWidth propertyName:@"edgeWidth"];
}

-(void)setCrisp:(NSNumber *)crisp {
	NSNumber *oldValue = _crisp;
	_crisp = crisp;
	[self updateNSObject:oldValue newValue:crisp propertyName:@"crisp"];
}

-(void)setDepth:(NSNumber *)depth {
	NSNumber *oldValue = _depth;
	_depth = depth;
	[self updateNSObject:oldValue newValue:depth propertyName:@"depth"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setGrouping:(NSNumber *)grouping {
	NSNumber *oldValue = _grouping;
	_grouping = grouping;
	[self updateNSObject:oldValue newValue:grouping propertyName:@"grouping"];
}

@end