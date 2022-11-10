#import "HIChartsJSONSerializableSubclass.h"
#import "HIPyramid3d.h"

@implementation HIPyramid3d

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"pyramid3d";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPyramid3d *copyPyramid3d = [[HIPyramid3d allocWithZone: zone] init];
	copyPyramid3d.data = [self.data copyWithZone: zone];
	copyPyramid3d.id = [self.id copyWithZone: zone];
	copyPyramid3d.index = [self.index copyWithZone: zone];
	copyPyramid3d.legendIndex = [self.legendIndex copyWithZone: zone];
	copyPyramid3d.name = [self.name copyWithZone: zone];
	copyPyramid3d.stack = [self.stack copyWithZone: zone];
	copyPyramid3d.type = [self.type copyWithZone: zone];
	copyPyramid3d.xAxis = [self.xAxis copyWithZone: zone];
	copyPyramid3d.yAxis = [self.yAxis copyWithZone: zone];
	copyPyramid3d.zIndex = [self.zIndex copyWithZone: zone];
	copyPyramid3d.reversed = [self.reversed copyWithZone: zone];
	copyPyramid3d.neckWidth = [self.neckWidth copyWithZone: zone];
	copyPyramid3d.neckHeight = [self.neckHeight copyWithZone: zone];
	copyPyramid3d.center = [self.center copyWithZone: zone];
	copyPyramid3d.height = [self.height copyWithZone: zone];
	copyPyramid3d.states = [self.states copyWithZone: zone];
	copyPyramid3d.width = [self.width copyWithZone: zone];
	copyPyramid3d.animation = [self.animation copyWithZone: zone];
	copyPyramid3d.dataLabels = [self.dataLabels copyWithZone: zone];
	copyPyramid3d.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyPyramid3d.clip = [self.clip copyWithZone: zone];
	copyPyramid3d.point = [self.point copyWithZone: zone];
	copyPyramid3d.color = [self.color copyWithZone: zone];
	copyPyramid3d.colors = [self.colors copyWithZone: zone];
	copyPyramid3d.size = [self.size copyWithZone: zone];
	copyPyramid3d.borderColor = [self.borderColor copyWithZone: zone];
	copyPyramid3d.tooltip = [self.tooltip copyWithZone: zone];
	copyPyramid3d.thickness = [self.thickness copyWithZone: zone];
	copyPyramid3d.minSize = [self.minSize copyWithZone: zone];
	copyPyramid3d.fillColor = [self.fillColor copyWithZone: zone];
	copyPyramid3d.startAngle = [self.startAngle copyWithZone: zone];
	copyPyramid3d.events = [self.events copyWithZone: zone];
	copyPyramid3d.endAngle = [self.endAngle copyWithZone: zone];
	copyPyramid3d.innerSize = [self.innerSize copyWithZone: zone];
	copyPyramid3d.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copyPyramid3d.depth = [self.depth copyWithZone: zone];
	copyPyramid3d.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPyramid3d.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyPyramid3d.showInLegend = [self.showInLegend copyWithZone: zone];
	copyPyramid3d.linecap = [self.linecap copyWithZone: zone];
	copyPyramid3d.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyPyramid3d.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPyramid3d.negativeColor = [self.negativeColor copyWithZone: zone];
	copyPyramid3d.pointInterval = [self.pointInterval copyWithZone: zone];
	copyPyramid3d.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyPyramid3d.colorKey = [self.colorKey copyWithZone: zone];
	copyPyramid3d.softThreshold = [self.softThreshold copyWithZone: zone];
	copyPyramid3d.dragDrop = [self.dragDrop copyWithZone: zone];
	copyPyramid3d.dataSorting = [self.dataSorting copyWithZone: zone];
	copyPyramid3d.marker = [self.marker copyWithZone: zone];
	copyPyramid3d.label = [self.label copyWithZone: zone];
	copyPyramid3d.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyPyramid3d.cursor = [self.cursor copyWithZone: zone];
	copyPyramid3d.dashStyle = [self.dashStyle copyWithZone: zone];
	copyPyramid3d.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyPyramid3d.connectNulls = [self.connectNulls copyWithZone: zone];
	copyPyramid3d.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyPyramid3d.custom = [self.custom copyWithZone: zone];
	copyPyramid3d.onPoint = [self.onPoint copyWithZone: zone];
	copyPyramid3d.stacking = [self.stacking copyWithZone: zone];
	copyPyramid3d.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyPyramid3d.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyPyramid3d.threshold = [self.threshold copyWithZone: zone];
	copyPyramid3d.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyPyramid3d.boostBlending = [self.boostBlending copyWithZone: zone];
	copyPyramid3d.opacity = [self.opacity copyWithZone: zone];
	copyPyramid3d.animationLimit = [self.animationLimit copyWithZone: zone];
	copyPyramid3d.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyPyramid3d.definition = [self.definition copyWithZone: zone];
	copyPyramid3d.keys = [self.keys copyWithZone: zone];
	copyPyramid3d.selected = [self.selected copyWithZone: zone];
	copyPyramid3d.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyPyramid3d.accessibility = [self.accessibility copyWithZone: zone];
	copyPyramid3d.step = [self.step copyWithZone: zone];
	copyPyramid3d.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyPyramid3d.shadow = [self.shadow copyWithZone: zone];
	copyPyramid3d.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyPyramid3d.colorAxis = [self.colorAxis copyWithZone: zone];
	copyPyramid3d.zones = [self.zones copyWithZone: zone];
	copyPyramid3d.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyPyramid3d.lineWidth = [self.lineWidth copyWithZone: zone];
	copyPyramid3d.crisp = [self.crisp copyWithZone: zone];
	copyPyramid3d.visible = [self.visible copyWithZone: zone];
	copyPyramid3d.linkedTo = [self.linkedTo copyWithZone: zone];
	copyPyramid3d.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyPyramid3d.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyPyramid3d.className = [self.className copyWithZone: zone];
	copyPyramid3d.pointStart = [self.pointStart copyWithZone: zone];
	copyPyramid3d.connectEnds = [self.connectEnds copyWithZone: zone];
	copyPyramid3d.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyPyramid3d.reversed = [self.reversed copyWithZone: zone];
	copyPyramid3d.neckWidth = [self.neckWidth copyWithZone: zone];
	copyPyramid3d.neckHeight = [self.neckHeight copyWithZone: zone];
	copyPyramid3d.dataLabels = [self.dataLabels copyWithZone: zone];
	copyPyramid3d.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyPyramid3d.height = [self.height copyWithZone: zone];
	copyPyramid3d.width = [self.width copyWithZone: zone];
	copyPyramid3d.animation = [self.animation copyWithZone: zone];
	copyPyramid3d.gradientForSides = [self.gradientForSides copyWithZone: zone];
	copyPyramid3d.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyPyramid3d.showInLegend = [self.showInLegend copyWithZone: zone];
	copyPyramid3d.pointPadding = [self.pointPadding copyWithZone: zone];
	copyPyramid3d.borderRadius = [self.borderRadius copyWithZone: zone];
	copyPyramid3d.pointRange = [self.pointRange copyWithZone: zone];
	copyPyramid3d.minPointLength = [self.minPointLength copyWithZone: zone];
	copyPyramid3d.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyPyramid3d.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyPyramid3d.states = [self.states copyWithZone: zone];
	copyPyramid3d.colors = [self.colors copyWithZone: zone];
	copyPyramid3d.dragDrop = [self.dragDrop copyWithZone: zone];
	copyPyramid3d.threshold = [self.threshold copyWithZone: zone];
	copyPyramid3d.borderColor = [self.borderColor copyWithZone: zone];
	copyPyramid3d.edgeColor = [self.edgeColor copyWithZone: zone];
	copyPyramid3d.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyPyramid3d.tooltip = [self.tooltip copyWithZone: zone];
	copyPyramid3d.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyPyramid3d.pointWidth = [self.pointWidth copyWithZone: zone];
	copyPyramid3d.groupPadding = [self.groupPadding copyWithZone: zone];
	copyPyramid3d.depth = [self.depth copyWithZone: zone];
	copyPyramid3d.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPyramid3d.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyPyramid3d.grouping = [self.grouping copyWithZone: zone];
	copyPyramid3d.linecap = [self.linecap copyWithZone: zone];
	copyPyramid3d.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyPyramid3d.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPyramid3d.clip = [self.clip copyWithZone: zone];
	copyPyramid3d.negativeColor = [self.negativeColor copyWithZone: zone];
	copyPyramid3d.color = [self.color copyWithZone: zone];
	copyPyramid3d.pointInterval = [self.pointInterval copyWithZone: zone];
	copyPyramid3d.colorKey = [self.colorKey copyWithZone: zone];
	copyPyramid3d.softThreshold = [self.softThreshold copyWithZone: zone];
	copyPyramid3d.point = [self.point copyWithZone: zone];
	copyPyramid3d.dataSorting = [self.dataSorting copyWithZone: zone];
	copyPyramid3d.marker = [self.marker copyWithZone: zone];
	copyPyramid3d.label = [self.label copyWithZone: zone];
	copyPyramid3d.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyPyramid3d.cursor = [self.cursor copyWithZone: zone];
	copyPyramid3d.dashStyle = [self.dashStyle copyWithZone: zone];
	copyPyramid3d.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyPyramid3d.connectNulls = [self.connectNulls copyWithZone: zone];
	copyPyramid3d.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyPyramid3d.custom = [self.custom copyWithZone: zone];
	copyPyramid3d.onPoint = [self.onPoint copyWithZone: zone];
	copyPyramid3d.stacking = [self.stacking copyWithZone: zone];
	copyPyramid3d.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyPyramid3d.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyPyramid3d.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyPyramid3d.boostBlending = [self.boostBlending copyWithZone: zone];
	copyPyramid3d.events = [self.events copyWithZone: zone];
	copyPyramid3d.opacity = [self.opacity copyWithZone: zone];
	copyPyramid3d.animationLimit = [self.animationLimit copyWithZone: zone];
	copyPyramid3d.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyPyramid3d.definition = [self.definition copyWithZone: zone];
	copyPyramid3d.keys = [self.keys copyWithZone: zone];
	copyPyramid3d.selected = [self.selected copyWithZone: zone];
	copyPyramid3d.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyPyramid3d.accessibility = [self.accessibility copyWithZone: zone];
	copyPyramid3d.step = [self.step copyWithZone: zone];
	copyPyramid3d.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyPyramid3d.shadow = [self.shadow copyWithZone: zone];
	copyPyramid3d.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyPyramid3d.colorAxis = [self.colorAxis copyWithZone: zone];
	copyPyramid3d.zones = [self.zones copyWithZone: zone];
	copyPyramid3d.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyPyramid3d.lineWidth = [self.lineWidth copyWithZone: zone];
	copyPyramid3d.crisp = [self.crisp copyWithZone: zone];
	copyPyramid3d.visible = [self.visible copyWithZone: zone];
	copyPyramid3d.linkedTo = [self.linkedTo copyWithZone: zone];
	copyPyramid3d.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyPyramid3d.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyPyramid3d.className = [self.className copyWithZone: zone];
	copyPyramid3d.pointStart = [self.pointStart copyWithZone: zone];
	copyPyramid3d.connectEnds = [self.connectEnds copyWithZone: zone];
	copyPyramid3d.boostThreshold = [self.boostThreshold copyWithZone: zone];
	return copyPyramid3d;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.neckWidth) {
		params[@"neckWidth"] = self.neckWidth;
	}
	if (self.neckHeight) {
		params[@"neckHeight"] = self.neckHeight;
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
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
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
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
	}
	if (self.slicedOffset) {
		params[@"slicedOffset"] = self.slicedOffset;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.neckWidth) {
		params[@"neckWidth"] = self.neckWidth;
	}
	if (self.neckHeight) {
		params[@"neckHeight"] = self.neckHeight;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
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
	return params;
}

# pragma mark - Setters

-(void)setReversed:(NSNumber *)reversed {
	NSNumber *oldValue = _reversed;
	_reversed = reversed;
	[self updateNSObject:oldValue newValue:reversed propertyName:@"reversed"];
}

-(void)setNeckWidth:(NSNumber *)neckWidth {
	NSNumber *oldValue = _neckWidth;
	_neckWidth = neckWidth;
	[self updateNSObject:oldValue newValue:neckWidth propertyName:@"neckWidth"];
}

-(void)setNeckHeight:(NSNumber *)neckHeight {
	NSNumber *oldValue = _neckHeight;
	_neckHeight = neckHeight;
	[self updateNSObject:oldValue newValue:neckHeight propertyName:@"neckHeight"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
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

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	NSNumber *oldValue = _ignoreHiddenPoint;
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:oldValue newValue:ignoreHiddenPoint propertyName:@"ignoreHiddenPoint"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setSize:(id)size {
	id oldValue = _size;
	_size = size;
	[self updateNSObject:oldValue newValue:size propertyName:@"size"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
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

-(void)setInnerSize:(id)innerSize {
	id oldValue = _innerSize;
	_innerSize = innerSize;
	[self updateNSObject:oldValue newValue:innerSize propertyName:@"innerSize"];
}

-(void)setSlicedOffset:(NSNumber *)slicedOffset {
	NSNumber *oldValue = _slicedOffset;
	_slicedOffset = slicedOffset;
	[self updateNSObject:oldValue newValue:slicedOffset propertyName:@"slicedOffset"];
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

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
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

-(void)setGrouping:(NSNumber *)grouping {
	NSNumber *oldValue = _grouping;
	_grouping = grouping;
	[self updateNSObject:oldValue newValue:grouping propertyName:@"grouping"];
}

@end
