#import "HIChartsJSONSerializableSubclass.h"
#import "HIWordcloud.h"

@implementation HIWordcloud

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"wordcloud";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIWordcloud *copyWordcloud = [[HIWordcloud allocWithZone: zone] init];
	copyWordcloud.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyWordcloud.style = [self.style copyWithZone: zone];
	copyWordcloud.minFontSize = [self.minFontSize copyWithZone: zone];
	copyWordcloud.maxFontSize = [self.maxFontSize copyWithZone: zone];
	copyWordcloud.spiral = [self.spiral copyWithZone: zone];
	copyWordcloud.tooltip = [self.tooltip copyWithZone: zone];
	copyWordcloud.animation = [self.animation copyWithZone: zone];
	copyWordcloud.borderWidth = [self.borderWidth copyWithZone: zone];
	copyWordcloud.rotation = [self.rotation copyWithZone: zone];
	copyWordcloud.showInLegend = [self.showInLegend copyWithZone: zone];
	copyWordcloud.placementStrategy = [self.placementStrategy copyWithZone: zone];
	copyWordcloud.pointPadding = [self.pointPadding copyWithZone: zone];
	copyWordcloud.borderRadius = [self.borderRadius copyWithZone: zone];
	copyWordcloud.pointRange = [self.pointRange copyWithZone: zone];
	copyWordcloud.minPointLength = [self.minPointLength copyWithZone: zone];
	copyWordcloud.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyWordcloud.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyWordcloud.states = [self.states copyWithZone: zone];
	copyWordcloud.colors = [self.colors copyWithZone: zone];
	copyWordcloud.dragDrop = [self.dragDrop copyWithZone: zone];
	copyWordcloud.threshold = [self.threshold copyWithZone: zone];
	copyWordcloud.borderColor = [self.borderColor copyWithZone: zone];
	copyWordcloud.edgeColor = [self.edgeColor copyWithZone: zone];
	copyWordcloud.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyWordcloud.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyWordcloud.pointWidth = [self.pointWidth copyWithZone: zone];
	copyWordcloud.groupPadding = [self.groupPadding copyWithZone: zone];
	copyWordcloud.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyWordcloud.dataLabels = [self.dataLabels copyWithZone: zone];
	copyWordcloud.depth = [self.depth copyWithZone: zone];
	copyWordcloud.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyWordcloud.grouping = [self.grouping copyWithZone: zone];
	copyWordcloud.linecap = [self.linecap copyWithZone: zone];
	copyWordcloud.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyWordcloud.colorIndex = [self.colorIndex copyWithZone: zone];
	copyWordcloud.clip = [self.clip copyWithZone: zone];
	copyWordcloud.negativeColor = [self.negativeColor copyWithZone: zone];
	copyWordcloud.color = [self.color copyWithZone: zone];
	copyWordcloud.pointInterval = [self.pointInterval copyWithZone: zone];
	copyWordcloud.colorKey = [self.colorKey copyWithZone: zone];
	copyWordcloud.softThreshold = [self.softThreshold copyWithZone: zone];
	copyWordcloud.point = [self.point copyWithZone: zone];
	copyWordcloud.dataSorting = [self.dataSorting copyWithZone: zone];
	copyWordcloud.marker = [self.marker copyWithZone: zone];
	copyWordcloud.label = [self.label copyWithZone: zone];
	copyWordcloud.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyWordcloud.cursor = [self.cursor copyWithZone: zone];
	copyWordcloud.dashStyle = [self.dashStyle copyWithZone: zone];
	copyWordcloud.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyWordcloud.connectNulls = [self.connectNulls copyWithZone: zone];
	copyWordcloud.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyWordcloud.custom = [self.custom copyWithZone: zone];
	copyWordcloud.onPoint = [self.onPoint copyWithZone: zone];
	copyWordcloud.stacking = [self.stacking copyWithZone: zone];
	copyWordcloud.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyWordcloud.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyWordcloud.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyWordcloud.boostBlending = [self.boostBlending copyWithZone: zone];
	copyWordcloud.events = [self.events copyWithZone: zone];
	copyWordcloud.opacity = [self.opacity copyWithZone: zone];
	copyWordcloud.animationLimit = [self.animationLimit copyWithZone: zone];
	copyWordcloud.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyWordcloud.definition = [self.definition copyWithZone: zone];
	copyWordcloud.keys = [self.keys copyWithZone: zone];
	copyWordcloud.selected = [self.selected copyWithZone: zone];
	copyWordcloud.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyWordcloud.accessibility = [self.accessibility copyWithZone: zone];
	copyWordcloud.step = [self.step copyWithZone: zone];
	copyWordcloud.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyWordcloud.shadow = [self.shadow copyWithZone: zone];
	copyWordcloud.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyWordcloud.colorAxis = [self.colorAxis copyWithZone: zone];
	copyWordcloud.zones = [self.zones copyWithZone: zone];
	copyWordcloud.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyWordcloud.lineWidth = [self.lineWidth copyWithZone: zone];
	copyWordcloud.crisp = [self.crisp copyWithZone: zone];
	copyWordcloud.visible = [self.visible copyWithZone: zone];
	copyWordcloud.linkedTo = [self.linkedTo copyWithZone: zone];
	copyWordcloud.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyWordcloud.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyWordcloud.className = [self.className copyWithZone: zone];
	copyWordcloud.pointStart = [self.pointStart copyWithZone: zone];
	copyWordcloud.connectEnds = [self.connectEnds copyWithZone: zone];
	copyWordcloud.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyWordcloud.data = [self.data copyWithZone: zone];
	copyWordcloud.id = [self.id copyWithZone: zone];
	copyWordcloud.index = [self.index copyWithZone: zone];
	copyWordcloud.legendIndex = [self.legendIndex copyWithZone: zone];
	copyWordcloud.name = [self.name copyWithZone: zone];
	copyWordcloud.stack = [self.stack copyWithZone: zone];
	copyWordcloud.type = [self.type copyWithZone: zone];
	copyWordcloud.xAxis = [self.xAxis copyWithZone: zone];
	copyWordcloud.yAxis = [self.yAxis copyWithZone: zone];
	copyWordcloud.zIndex = [self.zIndex copyWithZone: zone];
	return copyWordcloud;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.minFontSize) {
		params[@"minFontSize"] = self.minFontSize;
	}
	if (self.maxFontSize) {
		params[@"maxFontSize"] = self.maxFontSize;
	}
	if (self.spiral) {
		params[@"spiral"] = self.spiral;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.rotation) {
		params[@"rotation"] = [self.rotation getParams];
	}
	if (self.placementStrategy) {
		params[@"placementStrategy"] = self.placementStrategy;
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

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setStyle:(HICSSObject *)style {
	HICSSObject *oldValue = _style;
	_style = style;
	[self updateHIObject:oldValue newValue:style propertyName:@"style"];
}

-(void)setMinFontSize:(NSNumber *)minFontSize {
	NSNumber *oldValue = _minFontSize;
	_minFontSize = minFontSize;
	[self updateNSObject:oldValue newValue:minFontSize propertyName:@"minFontSize"];
}

-(void)setMaxFontSize:(NSNumber *)maxFontSize {
	NSNumber *oldValue = _maxFontSize;
	_maxFontSize = maxFontSize;
	[self updateNSObject:oldValue newValue:maxFontSize propertyName:@"maxFontSize"];
}

-(void)setSpiral:(NSString *)spiral {
	NSString *oldValue = _spiral;
	_spiral = spiral;
	[self updateNSObject:oldValue newValue:spiral propertyName:@"spiral"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setRotation:(HIRotation *)rotation {
	HIRotation *oldValue = _rotation;
	_rotation = rotation;
	[self updateHIObject:oldValue newValue:rotation propertyName:@"rotation"];
}

-(void)setPlacementStrategy:(NSString *)placementStrategy {
	NSString *oldValue = _placementStrategy;
	_placementStrategy = placementStrategy;
	[self updateNSObject:oldValue newValue:placementStrategy propertyName:@"placementStrategy"];
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