#import "HIChartsJSONSerializableSubclass.h"
#import "HIHistogram.h"

@implementation HIHistogram

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"histogram";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIHistogram *copyHistogram = [[HIHistogram allocWithZone: zone] init];
	copyHistogram.baseSeries = [self.baseSeries copyWithZone: zone];
	copyHistogram.id = [self.id copyWithZone: zone];
	copyHistogram.index = [self.index copyWithZone: zone];
	copyHistogram.legendIndex = [self.legendIndex copyWithZone: zone];
	copyHistogram.name = [self.name copyWithZone: zone];
	copyHistogram.stack = [self.stack copyWithZone: zone];
	copyHistogram.type = [self.type copyWithZone: zone];
	copyHistogram.xAxis = [self.xAxis copyWithZone: zone];
	copyHistogram.yAxis = [self.yAxis copyWithZone: zone];
	copyHistogram.zIndex = [self.zIndex copyWithZone: zone];
	copyHistogram.pointPadding = [self.pointPadding copyWithZone: zone];
	copyHistogram.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyHistogram.binWidth = [self.binWidth copyWithZone: zone];
	copyHistogram.tooltip = [self.tooltip copyWithZone: zone];
	copyHistogram.binsNumber = [self.binsNumber copyWithZone: zone];
	copyHistogram.groupPadding = [self.groupPadding copyWithZone: zone];
	copyHistogram.grouping = [self.grouping copyWithZone: zone];
	copyHistogram.borderRadius = [self.borderRadius copyWithZone: zone];
	copyHistogram.pointRange = [self.pointRange copyWithZone: zone];
	copyHistogram.minPointLength = [self.minPointLength copyWithZone: zone];
	copyHistogram.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyHistogram.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyHistogram.states = [self.states copyWithZone: zone];
	copyHistogram.colors = [self.colors copyWithZone: zone];
	copyHistogram.threshold = [self.threshold copyWithZone: zone];
	copyHistogram.borderColor = [self.borderColor copyWithZone: zone];
	copyHistogram.edgeColor = [self.edgeColor copyWithZone: zone];
	copyHistogram.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyHistogram.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyHistogram.pointWidth = [self.pointWidth copyWithZone: zone];
	copyHistogram.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyHistogram.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyHistogram.dataLabels = [self.dataLabels copyWithZone: zone];
	copyHistogram.depth = [self.depth copyWithZone: zone];
	copyHistogram.borderWidth = [self.borderWidth copyWithZone: zone];
	copyHistogram.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyHistogram.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyHistogram.selected = [self.selected copyWithZone: zone];
	copyHistogram.colorIndex = [self.colorIndex copyWithZone: zone];
	copyHistogram.clip = [self.clip copyWithZone: zone];
	copyHistogram.negativeColor = [self.negativeColor copyWithZone: zone];
	copyHistogram.color = [self.color copyWithZone: zone];
	copyHistogram.colorKey = [self.colorKey copyWithZone: zone];
	copyHistogram.softThreshold = [self.softThreshold copyWithZone: zone];
	copyHistogram.point = [self.point copyWithZone: zone];
	copyHistogram.dataSorting = [self.dataSorting copyWithZone: zone];
	copyHistogram.label = [self.label copyWithZone: zone];
	copyHistogram.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyHistogram.cursor = [self.cursor copyWithZone: zone];
	copyHistogram.dashStyle = [self.dashStyle copyWithZone: zone];
	copyHistogram.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyHistogram.custom = [self.custom copyWithZone: zone];
	copyHistogram.animation = [self.animation copyWithZone: zone];
	copyHistogram.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyHistogram.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyHistogram.events = [self.events copyWithZone: zone];
	copyHistogram.opacity = [self.opacity copyWithZone: zone];
	copyHistogram.animationLimit = [self.animationLimit copyWithZone: zone];
	copyHistogram.definition = [self.definition copyWithZone: zone];
	copyHistogram.keys = [self.keys copyWithZone: zone];
	copyHistogram.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyHistogram.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyHistogram.accessibility = [self.accessibility copyWithZone: zone];
	copyHistogram.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyHistogram.shadow = [self.shadow copyWithZone: zone];
	copyHistogram.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyHistogram.colorAxis = [self.colorAxis copyWithZone: zone];
	copyHistogram.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyHistogram.zones = [self.zones copyWithZone: zone];
	copyHistogram.crisp = [self.crisp copyWithZone: zone];
	copyHistogram.visible = [self.visible copyWithZone: zone];
	copyHistogram.linkedTo = [self.linkedTo copyWithZone: zone];
	copyHistogram.className = [self.className copyWithZone: zone];
	copyHistogram.pointStart = [self.pointStart copyWithZone: zone];
	copyHistogram.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyHistogram;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.baseSeries) {
		params[@"baseSeries"] = self.baseSeries;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.binWidth) {
		params[@"binWidth"] = self.binWidth;
	}
	if (self.binsNumber) {
		params[@"binsNumber"] = self.binsNumber;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
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
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setBaseSeries:(id)baseSeries {
	id oldValue = _baseSeries;
	_baseSeries = baseSeries;
	[self updateNSObject:oldValue newValue:baseSeries propertyName:@"baseSeries"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
}

-(void)setBinWidth:(NSNumber *)binWidth {
	NSNumber *oldValue = _binWidth;
	_binWidth = binWidth;
	[self updateNSObject:oldValue newValue:binWidth propertyName:@"binWidth"];
}

-(void)setBinsNumber:(id)binsNumber {
	id oldValue = _binsNumber;
	_binsNumber = binsNumber;
	[self updateNSObject:oldValue newValue:binsNumber propertyName:@"binsNumber"];
}

-(void)setGroupPadding:(NSNumber *)groupPadding {
	NSNumber *oldValue = _groupPadding;
	_groupPadding = groupPadding;
	[self updateNSObject:oldValue newValue:groupPadding propertyName:@"groupPadding"];
}

-(void)setGrouping:(NSNumber *)grouping {
	NSNumber *oldValue = _grouping;
	_grouping = grouping;
	[self updateNSObject:oldValue newValue:grouping propertyName:@"grouping"];
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

@end