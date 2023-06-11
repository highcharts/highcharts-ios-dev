#import "HIChartsJSONSerializableSubclass.h"
#import "HIErrorbar.h"

@implementation HIErrorbar

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"errorbar";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIErrorbar *copyErrorbar = [[HIErrorbar allocWithZone: zone] init];
	copyErrorbar.data = [self.data copyWithZone: zone];
	copyErrorbar.id = [self.id copyWithZone: zone];
	copyErrorbar.index = [self.index copyWithZone: zone];
	copyErrorbar.legendIndex = [self.legendIndex copyWithZone: zone];
	copyErrorbar.name = [self.name copyWithZone: zone];
	copyErrorbar.type = [self.type copyWithZone: zone];
	copyErrorbar.xAxis = [self.xAxis copyWithZone: zone];
	copyErrorbar.yAxis = [self.yAxis copyWithZone: zone];
	copyErrorbar.zIndex = [self.zIndex copyWithZone: zone];
	copyErrorbar.color = [self.color copyWithZone: zone];
	copyErrorbar.linkedTo = [self.linkedTo copyWithZone: zone];
	copyErrorbar.whiskerWidth = [self.whiskerWidth copyWithZone: zone];
	copyErrorbar.tooltip = [self.tooltip copyWithZone: zone];
	copyErrorbar.grouping = [self.grouping copyWithZone: zone];
	copyErrorbar.stemColor = [self.stemColor copyWithZone: zone];
	copyErrorbar.whiskerLength = [self.whiskerLength copyWithZone: zone];
	copyErrorbar.medianWidth = [self.medianWidth copyWithZone: zone];
	copyErrorbar.whiskerColor = [self.whiskerColor copyWithZone: zone];
	copyErrorbar.medianColor = [self.medianColor copyWithZone: zone];
	copyErrorbar.colorKey = [self.colorKey copyWithZone: zone];
	copyErrorbar.stemDashStyle = [self.stemDashStyle copyWithZone: zone];
	copyErrorbar.whiskerDashStyle = [self.whiskerDashStyle copyWithZone: zone];
	copyErrorbar.fillColor = [self.fillColor copyWithZone: zone];
	copyErrorbar.medianDashStyle = [self.medianDashStyle copyWithZone: zone];
	copyErrorbar.threshold = [self.threshold copyWithZone: zone];
	copyErrorbar.boxDashStyle = [self.boxDashStyle copyWithZone: zone];
	copyErrorbar.lineWidth = [self.lineWidth copyWithZone: zone];
	copyErrorbar.stemWidth = [self.stemWidth copyWithZone: zone];
	copyErrorbar.dragDrop = [self.dragDrop copyWithZone: zone];
	copyErrorbar.pointPadding = [self.pointPadding copyWithZone: zone];
	copyErrorbar.pointRange = [self.pointRange copyWithZone: zone];
	copyErrorbar.minPointLength = [self.minPointLength copyWithZone: zone];
	copyErrorbar.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyErrorbar.colors = [self.colors copyWithZone: zone];
	copyErrorbar.edgeColor = [self.edgeColor copyWithZone: zone];
	copyErrorbar.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyErrorbar.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyErrorbar.pointWidth = [self.pointWidth copyWithZone: zone];
	copyErrorbar.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyErrorbar.groupPadding = [self.groupPadding copyWithZone: zone];
	copyErrorbar.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyErrorbar.dataLabels = [self.dataLabels copyWithZone: zone];
	copyErrorbar.depth = [self.depth copyWithZone: zone];
	copyErrorbar.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyErrorbar.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyErrorbar.colorIndex = [self.colorIndex copyWithZone: zone];
	copyErrorbar.clip = [self.clip copyWithZone: zone];
	copyErrorbar.negativeColor = [self.negativeColor copyWithZone: zone];
	copyErrorbar.pointInterval = [self.pointInterval copyWithZone: zone];
	copyErrorbar.softThreshold = [self.softThreshold copyWithZone: zone];
	copyErrorbar.point = [self.point copyWithZone: zone];
	copyErrorbar.dataSorting = [self.dataSorting copyWithZone: zone];
	copyErrorbar.label = [self.label copyWithZone: zone];
	copyErrorbar.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyErrorbar.cursor = [self.cursor copyWithZone: zone];
	copyErrorbar.dashStyle = [self.dashStyle copyWithZone: zone];
	copyErrorbar.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyErrorbar.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyErrorbar.custom = [self.custom copyWithZone: zone];
	copyErrorbar.onPoint = [self.onPoint copyWithZone: zone];
	copyErrorbar.animation = [self.animation copyWithZone: zone];
	copyErrorbar.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyErrorbar.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyErrorbar.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyErrorbar.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyErrorbar.events = [self.events copyWithZone: zone];
	copyErrorbar.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copyErrorbar.opacity = [self.opacity copyWithZone: zone];
	copyErrorbar.animationLimit = [self.animationLimit copyWithZone: zone];
	copyErrorbar.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyErrorbar.definition = [self.definition copyWithZone: zone];
	copyErrorbar.keys = [self.keys copyWithZone: zone];
	copyErrorbar.selected = [self.selected copyWithZone: zone];
	copyErrorbar.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyErrorbar.accessibility = [self.accessibility copyWithZone: zone];
	copyErrorbar.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyErrorbar.sonification = [self.sonification copyWithZone: zone];
	copyErrorbar.shadow = [self.shadow copyWithZone: zone];
	copyErrorbar.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyErrorbar.colorAxis = [self.colorAxis copyWithZone: zone];
	copyErrorbar.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyErrorbar.zones = [self.zones copyWithZone: zone];
	copyErrorbar.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyErrorbar.crisp = [self.crisp copyWithZone: zone];
	copyErrorbar.visible = [self.visible copyWithZone: zone];
	copyErrorbar.className = [self.className copyWithZone: zone];
	copyErrorbar.pointStart = [self.pointStart copyWithZone: zone];
	copyErrorbar.showInLegend = [self.showInLegend copyWithZone: zone];
	copyErrorbar.stacking = [self.stacking copyWithZone: zone];
	return copyErrorbar;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.whiskerWidth) {
		params[@"whiskerWidth"] = self.whiskerWidth;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
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
	return params;
}

# pragma mark - Setters

-(void)setWhiskerWidth:(NSNumber *)whiskerWidth {
	NSNumber *oldValue = _whiskerWidth;
	_whiskerWidth = whiskerWidth;
	[self updateNSObject:oldValue newValue:whiskerWidth propertyName:@"whiskerWidth"];
}

-(void)setGrouping:(NSNumber *)grouping {
	NSNumber *oldValue = _grouping;
	_grouping = grouping;
	[self updateNSObject:oldValue newValue:grouping propertyName:@"grouping"];
}

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

@end