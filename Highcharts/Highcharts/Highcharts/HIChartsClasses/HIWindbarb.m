#import "HIChartsJSONSerializableSubclass.h"
#import "HIWindbarb.h"

@implementation HIWindbarb

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"windbarb";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIWindbarb *copyWindbarb = [[HIWindbarb allocWithZone: zone] init];
	copyWindbarb.onSeries = [self.onSeries copyWithZone: zone];
	copyWindbarb.vectorLength = [self.vectorLength copyWithZone: zone];
	copyWindbarb.tooltip = [self.tooltip copyWithZone: zone];
	copyWindbarb.yOffset = [self.yOffset copyWithZone: zone];
	copyWindbarb.states = [self.states copyWithZone: zone];
	copyWindbarb.colorKey = [self.colorKey copyWithZone: zone];
	copyWindbarb.dataGrouping = [self.dataGrouping copyWithZone: zone];
	copyWindbarb.lineWidth = [self.lineWidth copyWithZone: zone];
	copyWindbarb.xOffset = [self.xOffset copyWithZone: zone];
	copyWindbarb.pointPadding = [self.pointPadding copyWithZone: zone];
	copyWindbarb.borderRadius = [self.borderRadius copyWithZone: zone];
	copyWindbarb.pointRange = [self.pointRange copyWithZone: zone];
	copyWindbarb.minPointLength = [self.minPointLength copyWithZone: zone];
	copyWindbarb.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyWindbarb.colors = [self.colors copyWithZone: zone];
	copyWindbarb.threshold = [self.threshold copyWithZone: zone];
	copyWindbarb.borderColor = [self.borderColor copyWithZone: zone];
	copyWindbarb.edgeColor = [self.edgeColor copyWithZone: zone];
	copyWindbarb.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyWindbarb.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyWindbarb.pointWidth = [self.pointWidth copyWithZone: zone];
	copyWindbarb.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyWindbarb.groupPadding = [self.groupPadding copyWithZone: zone];
	copyWindbarb.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyWindbarb.dataLabels = [self.dataLabels copyWithZone: zone];
	copyWindbarb.depth = [self.depth copyWithZone: zone];
	copyWindbarb.borderWidth = [self.borderWidth copyWithZone: zone];
	copyWindbarb.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyWindbarb.grouping = [self.grouping copyWithZone: zone];
	copyWindbarb.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyWindbarb.colorIndex = [self.colorIndex copyWithZone: zone];
	copyWindbarb.clip = [self.clip copyWithZone: zone];
	copyWindbarb.negativeColor = [self.negativeColor copyWithZone: zone];
	copyWindbarb.color = [self.color copyWithZone: zone];
	copyWindbarb.pointInterval = [self.pointInterval copyWithZone: zone];
	copyWindbarb.softThreshold = [self.softThreshold copyWithZone: zone];
	copyWindbarb.point = [self.point copyWithZone: zone];
	copyWindbarb.dataSorting = [self.dataSorting copyWithZone: zone];
	copyWindbarb.label = [self.label copyWithZone: zone];
	copyWindbarb.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyWindbarb.cursor = [self.cursor copyWithZone: zone];
	copyWindbarb.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyWindbarb.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyWindbarb.custom = [self.custom copyWithZone: zone];
	copyWindbarb.onPoint = [self.onPoint copyWithZone: zone];
	copyWindbarb.animation = [self.animation copyWithZone: zone];
	copyWindbarb.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyWindbarb.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyWindbarb.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyWindbarb.events = [self.events copyWithZone: zone];
	copyWindbarb.opacity = [self.opacity copyWithZone: zone];
	copyWindbarb.animationLimit = [self.animationLimit copyWithZone: zone];
	copyWindbarb.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyWindbarb.definition = [self.definition copyWithZone: zone];
	copyWindbarb.keys = [self.keys copyWithZone: zone];
	copyWindbarb.selected = [self.selected copyWithZone: zone];
	copyWindbarb.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyWindbarb.accessibility = [self.accessibility copyWithZone: zone];
	copyWindbarb.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyWindbarb.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyWindbarb.colorAxis = [self.colorAxis copyWithZone: zone];
	copyWindbarb.zones = [self.zones copyWithZone: zone];
	copyWindbarb.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyWindbarb.crisp = [self.crisp copyWithZone: zone];
	copyWindbarb.visible = [self.visible copyWithZone: zone];
	copyWindbarb.linkedTo = [self.linkedTo copyWithZone: zone];
	copyWindbarb.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyWindbarb.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyWindbarb.className = [self.className copyWithZone: zone];
	copyWindbarb.pointStart = [self.pointStart copyWithZone: zone];
	copyWindbarb.showInLegend = [self.showInLegend copyWithZone: zone];
	copyWindbarb.data = [self.data copyWithZone: zone];
	copyWindbarb.id = [self.id copyWithZone: zone];
	copyWindbarb.index = [self.index copyWithZone: zone];
	copyWindbarb.legendIndex = [self.legendIndex copyWithZone: zone];
	copyWindbarb.name = [self.name copyWithZone: zone];
	copyWindbarb.stack = [self.stack copyWithZone: zone];
	copyWindbarb.type = [self.type copyWithZone: zone];
	copyWindbarb.xAxis = [self.xAxis copyWithZone: zone];
	copyWindbarb.yAxis = [self.yAxis copyWithZone: zone];
	copyWindbarb.zIndex = [self.zIndex copyWithZone: zone];
	return copyWindbarb;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.onSeries) {
		params[@"onSeries"] = self.onSeries;
	}
	if (self.vectorLength) {
		params[@"vectorLength"] = self.vectorLength;
	}
	if (self.yOffset) {
		params[@"yOffset"] = self.yOffset;
	}
	if (self.dataGrouping) {
		params[@"dataGrouping"] = [self.dataGrouping getParams];
	}
	if (self.xOffset) {
		params[@"xOffset"] = self.xOffset;
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
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	return params;
}

# pragma mark - Setters

-(void)setOnSeries:(NSString *)onSeries {
	NSString *oldValue = _onSeries;
	_onSeries = onSeries;
	[self updateNSObject:oldValue newValue:onSeries propertyName:@"onSeries"];
}

-(void)setVectorLength:(NSNumber *)vectorLength {
	NSNumber *oldValue = _vectorLength;
	_vectorLength = vectorLength;
	[self updateNSObject:oldValue newValue:vectorLength propertyName:@"vectorLength"];
}

-(void)setYOffset:(NSNumber *)yOffset {
	NSNumber *oldValue = _yOffset;
	_yOffset = yOffset;
	[self updateNSObject:oldValue newValue:yOffset propertyName:@"yOffset"];
}

-(void)setDataGrouping:(HIDataGrouping *)dataGrouping {
	HIDataGrouping *oldValue = _dataGrouping;
	_dataGrouping = dataGrouping;
	[self updateHIObject:oldValue newValue:dataGrouping propertyName:@"dataGrouping"];
}

-(void)setXOffset:(NSNumber *)xOffset {
	NSNumber *oldValue = _xOffset;
	_xOffset = xOffset;
	[self updateNSObject:oldValue newValue:xOffset propertyName:@"xOffset"];
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