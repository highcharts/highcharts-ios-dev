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
	copyWaterfall.color = [self.color copyWithZone: zone];
	copyWaterfall.dataLabels = [self.dataLabels copyWithZone: zone];
	copyWaterfall.states = [self.states copyWithZone: zone];
	copyWaterfall.lineColor = [self.lineColor copyWithZone: zone];
	copyWaterfall.lineWidth = [self.lineWidth copyWithZone: zone];
	copyWaterfall.pointPadding = [self.pointPadding copyWithZone: zone];
	copyWaterfall.borderRadius = [self.borderRadius copyWithZone: zone];
	copyWaterfall.pointRange = [self.pointRange copyWithZone: zone];
	copyWaterfall.minPointLength = [self.minPointLength copyWithZone: zone];
	copyWaterfall.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyWaterfall.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyWaterfall.colors = [self.colors copyWithZone: zone];
	copyWaterfall.softThreshold = [self.softThreshold copyWithZone: zone];
	copyWaterfall.threshold = [self.threshold copyWithZone: zone];
	copyWaterfall.edgeColor = [self.edgeColor copyWithZone: zone];
	copyWaterfall.tooltip = [self.tooltip copyWithZone: zone];
	copyWaterfall.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyWaterfall.pointWidth = [self.pointWidth copyWithZone: zone];
	copyWaterfall.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyWaterfall.groupPadding = [self.groupPadding copyWithZone: zone];
	copyWaterfall.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyWaterfall.crisp = [self.crisp copyWithZone: zone];
	copyWaterfall.depth = [self.depth copyWithZone: zone];
	copyWaterfall.borderWidth = [self.borderWidth copyWithZone: zone];
	copyWaterfall.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyWaterfall.grouping = [self.grouping copyWithZone: zone];
	copyWaterfall.point = [self.point copyWithZone: zone];
	copyWaterfall.selected = [self.selected copyWithZone: zone];
	copyWaterfall.colorIndex = [self.colorIndex copyWithZone: zone];
	copyWaterfall.clip = [self.clip copyWithZone: zone];
	copyWaterfall.negativeColor = [self.negativeColor copyWithZone: zone];
	copyWaterfall.pointInterval = [self.pointInterval copyWithZone: zone];
	copyWaterfall.dragDrop = [self.dragDrop copyWithZone: zone];
	copyWaterfall.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyWaterfall.className = [self.className copyWithZone: zone];
	copyWaterfall.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyWaterfall.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyWaterfall.label = [self.label copyWithZone: zone];
	copyWaterfall.stacking = [self.stacking copyWithZone: zone];
	copyWaterfall.animation = [self.animation copyWithZone: zone];
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
	copyWaterfall.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyWaterfall.zones = [self.zones copyWithZone: zone];
	copyWaterfall.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyWaterfall.visible = [self.visible copyWithZone: zone];
	copyWaterfall.linkedTo = [self.linkedTo copyWithZone: zone];
	copyWaterfall.cursor = [self.cursor copyWithZone: zone];
	copyWaterfall.pointStart = [self.pointStart copyWithZone: zone];
	copyWaterfall.boostThreshold = [self.boostThreshold copyWithZone: zone];
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
		for (id obj in self.colors) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"colors"] = array;
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

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setUpColor:(HIColor *)upColor {
	HIColor *oldValue = _upColor;
	_upColor = upColor;
	[self updateHIObject:oldValue newValue:upColor propertyName:@"upColor"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

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

-(void)setColors:(NSArray<NSString *> *)colors {
	NSArray<NSString *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
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