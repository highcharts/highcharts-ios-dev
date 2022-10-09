#import "HIChartsJSONSerializableSubclass.h"
#import "HIFunnel3d.h"

@implementation HIFunnel3d

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"funnel3d";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIFunnel3d *copyFunnel3d = [[HIFunnel3d allocWithZone: zone] init];
	copyFunnel3d.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyFunnel3d.reversed = [self.reversed copyWithZone: zone];
	copyFunnel3d.neckHeight = [self.neckHeight copyWithZone: zone];
	copyFunnel3d.height = [self.height copyWithZone: zone];
	copyFunnel3d.width = [self.width copyWithZone: zone];
	copyFunnel3d.animation = [self.animation copyWithZone: zone];
	copyFunnel3d.neckWidth = [self.neckWidth copyWithZone: zone];
	copyFunnel3d.gradientForSides = [self.gradientForSides copyWithZone: zone];
	copyFunnel3d.dataLabels = [self.dataLabels copyWithZone: zone];
	copyFunnel3d.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyFunnel3d.showInLegend = [self.showInLegend copyWithZone: zone];
	copyFunnel3d.pointPadding = [self.pointPadding copyWithZone: zone];
	copyFunnel3d.borderRadius = [self.borderRadius copyWithZone: zone];
	copyFunnel3d.pointRange = [self.pointRange copyWithZone: zone];
	copyFunnel3d.minPointLength = [self.minPointLength copyWithZone: zone];
	copyFunnel3d.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyFunnel3d.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyFunnel3d.states = [self.states copyWithZone: zone];
	copyFunnel3d.colors = [self.colors copyWithZone: zone];
	copyFunnel3d.dragDrop = [self.dragDrop copyWithZone: zone];
	copyFunnel3d.threshold = [self.threshold copyWithZone: zone];
	copyFunnel3d.borderColor = [self.borderColor copyWithZone: zone];
	copyFunnel3d.edgeColor = [self.edgeColor copyWithZone: zone];
	copyFunnel3d.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyFunnel3d.tooltip = [self.tooltip copyWithZone: zone];
	copyFunnel3d.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyFunnel3d.pointWidth = [self.pointWidth copyWithZone: zone];
	copyFunnel3d.groupPadding = [self.groupPadding copyWithZone: zone];
	copyFunnel3d.depth = [self.depth copyWithZone: zone];
	copyFunnel3d.borderWidth = [self.borderWidth copyWithZone: zone];
	copyFunnel3d.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyFunnel3d.grouping = [self.grouping copyWithZone: zone];
	copyFunnel3d.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyFunnel3d.colorIndex = [self.colorIndex copyWithZone: zone];
	copyFunnel3d.clip = [self.clip copyWithZone: zone];
	copyFunnel3d.negativeColor = [self.negativeColor copyWithZone: zone];
	copyFunnel3d.color = [self.color copyWithZone: zone];
	copyFunnel3d.pointInterval = [self.pointInterval copyWithZone: zone];
	copyFunnel3d.colorKey = [self.colorKey copyWithZone: zone];
	copyFunnel3d.softThreshold = [self.softThreshold copyWithZone: zone];
	copyFunnel3d.point = [self.point copyWithZone: zone];
	copyFunnel3d.label = [self.label copyWithZone: zone];
	copyFunnel3d.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyFunnel3d.cursor = [self.cursor copyWithZone: zone];
	copyFunnel3d.dashStyle = [self.dashStyle copyWithZone: zone];
	copyFunnel3d.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyFunnel3d.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyFunnel3d.custom = [self.custom copyWithZone: zone];
	copyFunnel3d.onPoint = [self.onPoint copyWithZone: zone];
	copyFunnel3d.stacking = [self.stacking copyWithZone: zone];
	copyFunnel3d.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyFunnel3d.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyFunnel3d.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyFunnel3d.events = [self.events copyWithZone: zone];
	copyFunnel3d.opacity = [self.opacity copyWithZone: zone];
	copyFunnel3d.animationLimit = [self.animationLimit copyWithZone: zone];
	copyFunnel3d.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyFunnel3d.definition = [self.definition copyWithZone: zone];
	copyFunnel3d.keys = [self.keys copyWithZone: zone];
	copyFunnel3d.selected = [self.selected copyWithZone: zone];
	copyFunnel3d.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyFunnel3d.accessibility = [self.accessibility copyWithZone: zone];
	copyFunnel3d.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyFunnel3d.shadow = [self.shadow copyWithZone: zone];
	copyFunnel3d.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyFunnel3d.zones = [self.zones copyWithZone: zone];
	copyFunnel3d.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyFunnel3d.crisp = [self.crisp copyWithZone: zone];
	copyFunnel3d.visible = [self.visible copyWithZone: zone];
	copyFunnel3d.linkedTo = [self.linkedTo copyWithZone: zone];
	copyFunnel3d.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyFunnel3d.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyFunnel3d.className = [self.className copyWithZone: zone];
	copyFunnel3d.pointStart = [self.pointStart copyWithZone: zone];
	copyFunnel3d.data = [self.data copyWithZone: zone];
	copyFunnel3d.id = [self.id copyWithZone: zone];
	copyFunnel3d.index = [self.index copyWithZone: zone];
	copyFunnel3d.legendIndex = [self.legendIndex copyWithZone: zone];
	copyFunnel3d.name = [self.name copyWithZone: zone];
	copyFunnel3d.type = [self.type copyWithZone: zone];
	copyFunnel3d.zIndex = [self.zIndex copyWithZone: zone];
	copyFunnel3d.center = [self.center copyWithZone: zone];
	copyFunnel3d.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyFunnel3d.thickness = [self.thickness copyWithZone: zone];
	copyFunnel3d.minSize = [self.minSize copyWithZone: zone];
	copyFunnel3d.fillColor = [self.fillColor copyWithZone: zone];
	copyFunnel3d.startAngle = [self.startAngle copyWithZone: zone];
	copyFunnel3d.endAngle = [self.endAngle copyWithZone: zone];
	copyFunnel3d.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyFunnel3d.linecap = [self.linecap copyWithZone: zone];
	return copyFunnel3d;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.neckHeight) {
		params[@"neckHeight"] = self.neckHeight;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.neckWidth) {
		params[@"neckWidth"] = self.neckWidth;
	}
	if (self.gradientForSides) {
		params[@"gradientForSides"] = self.gradientForSides;
	}
	if (self.edgeWidth) {
		params[@"edgeWidth"] = self.edgeWidth;
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
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	if (self.center) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.center) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"center"] = array;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.thickness) {
		params[@"thickness"] = self.thickness;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.slicedOffset) {
		params[@"slicedOffset"] = self.slicedOffset;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setReversed:(NSNumber *)reversed {
	NSNumber *oldValue = _reversed;
	_reversed = reversed;
	[self updateNSObject:oldValue newValue:reversed propertyName:@"reversed"];
}

-(void)setNeckHeight:(id)neckHeight {
	id oldValue = _neckHeight;
	_neckHeight = neckHeight;
	[self updateNSObject:oldValue newValue:neckHeight propertyName:@"neckHeight"];
}

-(void)setHeight:(id)height {
	id oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setWidth:(id)width {
	id oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setNeckWidth:(id)neckWidth {
	id oldValue = _neckWidth;
	_neckWidth = neckWidth;
	[self updateNSObject:oldValue newValue:neckWidth propertyName:@"neckWidth"];
}

-(void)setGradientForSides:(NSNumber *)gradientForSides {
	NSNumber *oldValue = _gradientForSides;
	_gradientForSides = gradientForSides;
	[self updateNSObject:oldValue newValue:gradientForSides propertyName:@"gradientForSides"];
}

-(void)setEdgeWidth:(NSNumber *)edgeWidth {
	NSNumber *oldValue = _edgeWidth;
	_edgeWidth = edgeWidth;
	[self updateNSObject:oldValue newValue:edgeWidth propertyName:@"edgeWidth"];
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

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	NSNumber *oldValue = _ignoreHiddenPoint;
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:oldValue newValue:ignoreHiddenPoint propertyName:@"ignoreHiddenPoint"];
}

-(void)setThickness:(NSNumber *)thickness {
	NSNumber *oldValue = _thickness;
	_thickness = thickness;
	[self updateNSObject:oldValue newValue:thickness propertyName:@"thickness"];
}

-(void)setMinSize:(id)minSize {
	id oldValue = _minSize;
	_minSize = minSize;
	[self updateNSObject:oldValue newValue:minSize propertyName:@"minSize"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	NSNumber *oldValue = _startAngle;
	_startAngle = startAngle;
	[self updateNSObject:oldValue newValue:startAngle propertyName:@"startAngle"];
}

-(void)setEndAngle:(NSNumber *)endAngle {
	NSNumber *oldValue = _endAngle;
	_endAngle = endAngle;
	[self updateNSObject:oldValue newValue:endAngle propertyName:@"endAngle"];
}

-(void)setSlicedOffset:(NSNumber *)slicedOffset {
	NSNumber *oldValue = _slicedOffset;
	_slicedOffset = slicedOffset;
	[self updateNSObject:oldValue newValue:slicedOffset propertyName:@"slicedOffset"];
}

@end