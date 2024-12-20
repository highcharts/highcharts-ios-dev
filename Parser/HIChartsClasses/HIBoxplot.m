#import "HIChartsJSONSerializableSubclass.h"
#import "HIBoxplot.h"

@implementation HIBoxplot

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"boxplot";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBoxplot *copyBoxplot = [[HIBoxplot allocWithZone: zone] init];
	copyBoxplot.data = [self.data copyWithZone: zone];
	copyBoxplot.id = [self.id copyWithZone: zone];
	copyBoxplot.index = [self.index copyWithZone: zone];
	copyBoxplot.legendIndex = [self.legendIndex copyWithZone: zone];
	copyBoxplot.name = [self.name copyWithZone: zone];
	copyBoxplot.type = [self.type copyWithZone: zone];
	copyBoxplot.xAxis = [self.xAxis copyWithZone: zone];
	copyBoxplot.yAxis = [self.yAxis copyWithZone: zone];
	copyBoxplot.zIndex = [self.zIndex copyWithZone: zone];
	copyBoxplot.stemColor = [self.stemColor copyWithZone: zone];
	copyBoxplot.whiskerLength = [self.whiskerLength copyWithZone: zone];
	copyBoxplot.medianWidth = [self.medianWidth copyWithZone: zone];
	copyBoxplot.whiskerColor = [self.whiskerColor copyWithZone: zone];
	copyBoxplot.tooltip = [self.tooltip copyWithZone: zone];
	copyBoxplot.medianColor = [self.medianColor copyWithZone: zone];
	copyBoxplot.colorKey = [self.colorKey copyWithZone: zone];
	copyBoxplot.stemDashStyle = [self.stemDashStyle copyWithZone: zone];
	copyBoxplot.whiskerDashStyle = [self.whiskerDashStyle copyWithZone: zone];
	copyBoxplot.fillColor = [self.fillColor copyWithZone: zone];
	copyBoxplot.medianDashStyle = [self.medianDashStyle copyWithZone: zone];
	copyBoxplot.whiskerWidth = [self.whiskerWidth copyWithZone: zone];
	copyBoxplot.threshold = [self.threshold copyWithZone: zone];
	copyBoxplot.boxDashStyle = [self.boxDashStyle copyWithZone: zone];
	copyBoxplot.lineWidth = [self.lineWidth copyWithZone: zone];
	copyBoxplot.stemWidth = [self.stemWidth copyWithZone: zone];
	copyBoxplot.dragDrop = [self.dragDrop copyWithZone: zone];
	copyBoxplot.pointPadding = [self.pointPadding copyWithZone: zone];
	copyBoxplot.pointRange = [self.pointRange copyWithZone: zone];
	copyBoxplot.minPointLength = [self.minPointLength copyWithZone: zone];
	copyBoxplot.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyBoxplot.colors = [self.colors copyWithZone: zone];
	copyBoxplot.edgeColor = [self.edgeColor copyWithZone: zone];
	copyBoxplot.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyBoxplot.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyBoxplot.pointWidth = [self.pointWidth copyWithZone: zone];
	copyBoxplot.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyBoxplot.groupPadding = [self.groupPadding copyWithZone: zone];
	copyBoxplot.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyBoxplot.dataLabels = [self.dataLabels copyWithZone: zone];
	copyBoxplot.depth = [self.depth copyWithZone: zone];
	copyBoxplot.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyBoxplot.grouping = [self.grouping copyWithZone: zone];
	copyBoxplot.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyBoxplot.colorIndex = [self.colorIndex copyWithZone: zone];
	copyBoxplot.clip = [self.clip copyWithZone: zone];
	copyBoxplot.negativeColor = [self.negativeColor copyWithZone: zone];
	copyBoxplot.color = [self.color copyWithZone: zone];
	copyBoxplot.pointInterval = [self.pointInterval copyWithZone: zone];
	copyBoxplot.softThreshold = [self.softThreshold copyWithZone: zone];
	copyBoxplot.point = [self.point copyWithZone: zone];
	copyBoxplot.dataSorting = [self.dataSorting copyWithZone: zone];
	copyBoxplot.label = [self.label copyWithZone: zone];
	copyBoxplot.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyBoxplot.cursor = [self.cursor copyWithZone: zone];
	copyBoxplot.dashStyle = [self.dashStyle copyWithZone: zone];
	copyBoxplot.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyBoxplot.inactiveOtherPoints = [self.inactiveOtherPoints copyWithZone: zone];
	copyBoxplot.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyBoxplot.custom = [self.custom copyWithZone: zone];
	copyBoxplot.onPoint = [self.onPoint copyWithZone: zone];
	copyBoxplot.animation = [self.animation copyWithZone: zone];
	copyBoxplot.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyBoxplot.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyBoxplot.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyBoxplot.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyBoxplot.events = [self.events copyWithZone: zone];
	copyBoxplot.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copyBoxplot.opacity = [self.opacity copyWithZone: zone];
	copyBoxplot.animationLimit = [self.animationLimit copyWithZone: zone];
	copyBoxplot.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyBoxplot.definition = [self.definition copyWithZone: zone];
	copyBoxplot.keys = [self.keys copyWithZone: zone];
	copyBoxplot.legendSymbolColor = [self.legendSymbolColor copyWithZone: zone];
	copyBoxplot.selected = [self.selected copyWithZone: zone];
	copyBoxplot.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyBoxplot.accessibility = [self.accessibility copyWithZone: zone];
	copyBoxplot.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyBoxplot.sonification = [self.sonification copyWithZone: zone];
	copyBoxplot.shadow = [self.shadow copyWithZone: zone];
	copyBoxplot.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyBoxplot.colorAxis = [self.colorAxis copyWithZone: zone];
	copyBoxplot.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyBoxplot.zones = [self.zones copyWithZone: zone];
	copyBoxplot.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyBoxplot.crisp = [self.crisp copyWithZone: zone];
	copyBoxplot.visible = [self.visible copyWithZone: zone];
	copyBoxplot.linkedTo = [self.linkedTo copyWithZone: zone];
	copyBoxplot.className = [self.className copyWithZone: zone];
	copyBoxplot.pointStart = [self.pointStart copyWithZone: zone];
	copyBoxplot.showInLegend = [self.showInLegend copyWithZone: zone];
	copyBoxplot.stacking = [self.stacking copyWithZone: zone];
	return copyBoxplot;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.stemColor) {
		params[@"stemColor"] = [self.stemColor getData];
	}
	if (self.whiskerLength) {
		params[@"whiskerLength"] = self.whiskerLength;
	}
	if (self.medianWidth) {
		params[@"medianWidth"] = self.medianWidth;
	}
	if (self.whiskerColor) {
		params[@"whiskerColor"] = [self.whiskerColor getData];
	}
	if (self.medianColor) {
		params[@"medianColor"] = [self.medianColor getData];
	}
	if (self.stemDashStyle) {
		params[@"stemDashStyle"] = self.stemDashStyle;
	}
	if (self.whiskerDashStyle) {
		params[@"whiskerDashStyle"] = self.whiskerDashStyle;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.medianDashStyle) {
		params[@"medianDashStyle"] = self.medianDashStyle;
	}
	if (self.whiskerWidth) {
		params[@"whiskerWidth"] = self.whiskerWidth;
	}
	if (self.boxDashStyle) {
		params[@"boxDashStyle"] = self.boxDashStyle;
	}
	if (self.stemWidth) {
		params[@"stemWidth"] = self.stemWidth;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
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
	if (self.centerInCategory) {
		params[@"centerInCategory"] = self.centerInCategory;
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
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	return params;
}

# pragma mark - Setters

-(void)setStemColor:(HIColor *)stemColor {
	HIColor *oldValue = _stemColor;
	_stemColor = stemColor;
	[self updateHIObject:oldValue newValue:stemColor propertyName:@"stemColor"];
}

-(void)setWhiskerLength:(id)whiskerLength {
	id oldValue = _whiskerLength;
	_whiskerLength = whiskerLength;
	[self updateNSObject:oldValue newValue:whiskerLength propertyName:@"whiskerLength"];
}

-(void)setMedianWidth:(NSNumber *)medianWidth {
	NSNumber *oldValue = _medianWidth;
	_medianWidth = medianWidth;
	[self updateNSObject:oldValue newValue:medianWidth propertyName:@"medianWidth"];
}

-(void)setWhiskerColor:(HIColor *)whiskerColor {
	HIColor *oldValue = _whiskerColor;
	_whiskerColor = whiskerColor;
	[self updateHIObject:oldValue newValue:whiskerColor propertyName:@"whiskerColor"];
}

-(void)setMedianColor:(HIColor *)medianColor {
	HIColor *oldValue = _medianColor;
	_medianColor = medianColor;
	[self updateHIObject:oldValue newValue:medianColor propertyName:@"medianColor"];
}

-(void)setStemDashStyle:(NSString *)stemDashStyle {
	NSString *oldValue = _stemDashStyle;
	_stemDashStyle = stemDashStyle;
	[self updateNSObject:oldValue newValue:stemDashStyle propertyName:@"stemDashStyle"];
}

-(void)setWhiskerDashStyle:(NSString *)whiskerDashStyle {
	NSString *oldValue = _whiskerDashStyle;
	_whiskerDashStyle = whiskerDashStyle;
	[self updateNSObject:oldValue newValue:whiskerDashStyle propertyName:@"whiskerDashStyle"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setMedianDashStyle:(NSString *)medianDashStyle {
	NSString *oldValue = _medianDashStyle;
	_medianDashStyle = medianDashStyle;
	[self updateNSObject:oldValue newValue:medianDashStyle propertyName:@"medianDashStyle"];
}

-(void)setWhiskerWidth:(NSNumber *)whiskerWidth {
	NSNumber *oldValue = _whiskerWidth;
	_whiskerWidth = whiskerWidth;
	[self updateNSObject:oldValue newValue:whiskerWidth propertyName:@"whiskerWidth"];
}

-(void)setBoxDashStyle:(NSString *)boxDashStyle {
	NSString *oldValue = _boxDashStyle;
	_boxDashStyle = boxDashStyle;
	[self updateNSObject:oldValue newValue:boxDashStyle propertyName:@"boxDashStyle"];
}

-(void)setStemWidth:(NSNumber *)stemWidth {
	NSNumber *oldValue = _stemWidth;
	_stemWidth = stemWidth;
	[self updateNSObject:oldValue newValue:stemWidth propertyName:@"stemWidth"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
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

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setEdgeColor:(HIColor *)edgeColor {
	HIColor *oldValue = _edgeColor;
	_edgeColor = edgeColor;
	[self updateHIObject:oldValue newValue:edgeColor propertyName:@"edgeColor"];
}

-(void)setCenterInCategory:(NSNumber *)centerInCategory {
	NSNumber *oldValue = _centerInCategory;
	_centerInCategory = centerInCategory;
	[self updateNSObject:oldValue newValue:centerInCategory propertyName:@"centerInCategory"];
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

-(void)setDepth:(NSNumber *)depth {
	NSNumber *oldValue = _depth;
	_depth = depth;
	[self updateNSObject:oldValue newValue:depth propertyName:@"depth"];
}

-(void)setGrouping:(NSNumber *)grouping {
	NSNumber *oldValue = _grouping;
	_grouping = grouping;
	[self updateNSObject:oldValue newValue:grouping propertyName:@"grouping"];
}

@end