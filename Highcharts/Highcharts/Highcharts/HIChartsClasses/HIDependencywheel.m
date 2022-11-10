#import "HIChartsJSONSerializableSubclass.h"
#import "HIDependencywheel.h"

@implementation HIDependencywheel

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"dependencywheel";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIDependencywheel *copyDependencywheel = [[HIDependencywheel allocWithZone: zone] init];
	copyDependencywheel.nodes = [self.nodes copyWithZone: zone];
	copyDependencywheel.data = [self.data copyWithZone: zone];
	copyDependencywheel.id = [self.id copyWithZone: zone];
	copyDependencywheel.index = [self.index copyWithZone: zone];
	copyDependencywheel.legendIndex = [self.legendIndex copyWithZone: zone];
	copyDependencywheel.name = [self.name copyWithZone: zone];
	copyDependencywheel.stack = [self.stack copyWithZone: zone];
	copyDependencywheel.type = [self.type copyWithZone: zone];
	copyDependencywheel.xAxis = [self.xAxis copyWithZone: zone];
	copyDependencywheel.yAxis = [self.yAxis copyWithZone: zone];
	copyDependencywheel.zIndex = [self.zIndex copyWithZone: zone];
	copyDependencywheel.size = [self.size copyWithZone: zone];
	copyDependencywheel.dataLabels = [self.dataLabels copyWithZone: zone];
	copyDependencywheel.startAngle = [self.startAngle copyWithZone: zone];
	copyDependencywheel.center = [self.center copyWithZone: zone];
	copyDependencywheel.curveFactor = [self.curveFactor copyWithZone: zone];
	copyDependencywheel.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyDependencywheel.opacity = [self.opacity copyWithZone: zone];
	copyDependencywheel.minLinkWidth = [self.minLinkWidth copyWithZone: zone];
	copyDependencywheel.nodePadding = [self.nodePadding copyWithZone: zone];
	copyDependencywheel.tooltip = [self.tooltip copyWithZone: zone];
	copyDependencywheel.states = [self.states copyWithZone: zone];
	copyDependencywheel.nodeWidth = [self.nodeWidth copyWithZone: zone];
	copyDependencywheel.levels = [self.levels copyWithZone: zone];
	copyDependencywheel.borderWidth = [self.borderWidth copyWithZone: zone];
	copyDependencywheel.linkOpacity = [self.linkOpacity copyWithZone: zone];
	copyDependencywheel.showInLegend = [self.showInLegend copyWithZone: zone];
	copyDependencywheel.pointPadding = [self.pointPadding copyWithZone: zone];
	copyDependencywheel.borderRadius = [self.borderRadius copyWithZone: zone];
	copyDependencywheel.pointRange = [self.pointRange copyWithZone: zone];
	copyDependencywheel.minPointLength = [self.minPointLength copyWithZone: zone];
	copyDependencywheel.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyDependencywheel.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyDependencywheel.colors = [self.colors copyWithZone: zone];
	copyDependencywheel.dragDrop = [self.dragDrop copyWithZone: zone];
	copyDependencywheel.threshold = [self.threshold copyWithZone: zone];
	copyDependencywheel.borderColor = [self.borderColor copyWithZone: zone];
	copyDependencywheel.edgeColor = [self.edgeColor copyWithZone: zone];
	copyDependencywheel.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyDependencywheel.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyDependencywheel.pointWidth = [self.pointWidth copyWithZone: zone];
	copyDependencywheel.groupPadding = [self.groupPadding copyWithZone: zone];
	copyDependencywheel.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyDependencywheel.depth = [self.depth copyWithZone: zone];
	copyDependencywheel.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyDependencywheel.grouping = [self.grouping copyWithZone: zone];
	copyDependencywheel.linecap = [self.linecap copyWithZone: zone];
	copyDependencywheel.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyDependencywheel.colorIndex = [self.colorIndex copyWithZone: zone];
	copyDependencywheel.clip = [self.clip copyWithZone: zone];
	copyDependencywheel.negativeColor = [self.negativeColor copyWithZone: zone];
	copyDependencywheel.color = [self.color copyWithZone: zone];
	copyDependencywheel.pointInterval = [self.pointInterval copyWithZone: zone];
	copyDependencywheel.colorKey = [self.colorKey copyWithZone: zone];
	copyDependencywheel.softThreshold = [self.softThreshold copyWithZone: zone];
	copyDependencywheel.point = [self.point copyWithZone: zone];
	copyDependencywheel.marker = [self.marker copyWithZone: zone];
	copyDependencywheel.label = [self.label copyWithZone: zone];
	copyDependencywheel.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyDependencywheel.cursor = [self.cursor copyWithZone: zone];
	copyDependencywheel.dashStyle = [self.dashStyle copyWithZone: zone];
	copyDependencywheel.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyDependencywheel.connectNulls = [self.connectNulls copyWithZone: zone];
	copyDependencywheel.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyDependencywheel.custom = [self.custom copyWithZone: zone];
	copyDependencywheel.onPoint = [self.onPoint copyWithZone: zone];
	copyDependencywheel.stacking = [self.stacking copyWithZone: zone];
	copyDependencywheel.animation = [self.animation copyWithZone: zone];
	copyDependencywheel.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyDependencywheel.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyDependencywheel.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyDependencywheel.boostBlending = [self.boostBlending copyWithZone: zone];
	copyDependencywheel.events = [self.events copyWithZone: zone];
	copyDependencywheel.animationLimit = [self.animationLimit copyWithZone: zone];
	copyDependencywheel.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyDependencywheel.definition = [self.definition copyWithZone: zone];
	copyDependencywheel.keys = [self.keys copyWithZone: zone];
	copyDependencywheel.selected = [self.selected copyWithZone: zone];
	copyDependencywheel.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyDependencywheel.accessibility = [self.accessibility copyWithZone: zone];
	copyDependencywheel.step = [self.step copyWithZone: zone];
	copyDependencywheel.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyDependencywheel.shadow = [self.shadow copyWithZone: zone];
	copyDependencywheel.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyDependencywheel.colorAxis = [self.colorAxis copyWithZone: zone];
	copyDependencywheel.zones = [self.zones copyWithZone: zone];
	copyDependencywheel.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyDependencywheel.lineWidth = [self.lineWidth copyWithZone: zone];
	copyDependencywheel.crisp = [self.crisp copyWithZone: zone];
	copyDependencywheel.visible = [self.visible copyWithZone: zone];
	copyDependencywheel.linkedTo = [self.linkedTo copyWithZone: zone];
	copyDependencywheel.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyDependencywheel.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyDependencywheel.className = [self.className copyWithZone: zone];
	copyDependencywheel.pointStart = [self.pointStart copyWithZone: zone];
	copyDependencywheel.connectEnds = [self.connectEnds copyWithZone: zone];
	copyDependencywheel.boostThreshold = [self.boostThreshold copyWithZone: zone];
	return copyDependencywheel;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.nodes) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.nodes) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"nodes"] = array;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
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
	if (self.curveFactor) {
		params[@"curveFactor"] = self.curveFactor;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.minLinkWidth) {
		params[@"minLinkWidth"] = self.minLinkWidth;
	}
	if (self.nodePadding) {
		params[@"nodePadding"] = self.nodePadding;
	}
	if (self.nodeWidth) {
		params[@"nodeWidth"] = self.nodeWidth;
	}
	if (self.levels) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.levels) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"levels"] = array;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.linkOpacity) {
		params[@"linkOpacity"] = self.linkOpacity;
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

-(void)setNodes:(NSArray <HINodes *> *)nodes {
	NSArray <HINodes *> *oldValue = _nodes;
	_nodes = nodes;
	[self updateArrayObject:oldValue newValue:nodes propertyName:@"nodes"];
}

-(void)setSize:(id)size {
	id oldValue = _size;
	_size = size;
	[self updateNSObject:oldValue newValue:size propertyName:@"size"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	NSNumber *oldValue = _startAngle;
	_startAngle = startAngle;
	[self updateNSObject:oldValue newValue:startAngle propertyName:@"startAngle"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setCurveFactor:(NSNumber *)curveFactor {
	NSNumber *oldValue = _curveFactor;
	_curveFactor = curveFactor;
	[self updateNSObject:oldValue newValue:curveFactor propertyName:@"curveFactor"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setMinLinkWidth:(NSNumber *)minLinkWidth {
	NSNumber *oldValue = _minLinkWidth;
	_minLinkWidth = minLinkWidth;
	[self updateNSObject:oldValue newValue:minLinkWidth propertyName:@"minLinkWidth"];
}

-(void)setNodePadding:(NSNumber *)nodePadding {
	NSNumber *oldValue = _nodePadding;
	_nodePadding = nodePadding;
	[self updateNSObject:oldValue newValue:nodePadding propertyName:@"nodePadding"];
}

-(void)setNodeWidth:(NSNumber *)nodeWidth {
	NSNumber *oldValue = _nodeWidth;
	_nodeWidth = nodeWidth;
	[self updateNSObject:oldValue newValue:nodeWidth propertyName:@"nodeWidth"];
}

-(void)setLevels:(NSArray <HILevels *> *)levels {
	NSArray <HILevels *> *oldValue = _levels;
	_levels = levels;
	[self updateArrayObject:oldValue newValue:levels propertyName:@"levels"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setLinkOpacity:(NSNumber *)linkOpacity {
	NSNumber *oldValue = _linkOpacity;
	_linkOpacity = linkOpacity;
	[self updateNSObject:oldValue newValue:linkOpacity propertyName:@"linkOpacity"];
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