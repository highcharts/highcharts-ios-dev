#import "HIChartsJSONSerializableSubclass.h"
#import "HISankey.h"

@implementation HISankey

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"sankey";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISankey *copySankey = [[HISankey allocWithZone: zone] init];
	copySankey.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copySankey.opacity = [self.opacity copyWithZone: zone];
	copySankey.minLinkWidth = [self.minLinkWidth copyWithZone: zone];
	copySankey.curveFactor = [self.curveFactor copyWithZone: zone];
	copySankey.nodePadding = [self.nodePadding copyWithZone: zone];
	copySankey.tooltip = [self.tooltip copyWithZone: zone];
	copySankey.dataLabels = [self.dataLabels copyWithZone: zone];
	copySankey.states = [self.states copyWithZone: zone];
	copySankey.nodeWidth = [self.nodeWidth copyWithZone: zone];
	copySankey.levels = [self.levels copyWithZone: zone];
	copySankey.borderWidth = [self.borderWidth copyWithZone: zone];
	copySankey.linkOpacity = [self.linkOpacity copyWithZone: zone];
	copySankey.showInLegend = [self.showInLegend copyWithZone: zone];
	copySankey.pointPadding = [self.pointPadding copyWithZone: zone];
	copySankey.borderRadius = [self.borderRadius copyWithZone: zone];
	copySankey.pointRange = [self.pointRange copyWithZone: zone];
	copySankey.minPointLength = [self.minPointLength copyWithZone: zone];
	copySankey.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copySankey.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copySankey.colors = [self.colors copyWithZone: zone];
	copySankey.dragDrop = [self.dragDrop copyWithZone: zone];
	copySankey.threshold = [self.threshold copyWithZone: zone];
	copySankey.borderColor = [self.borderColor copyWithZone: zone];
	copySankey.edgeColor = [self.edgeColor copyWithZone: zone];
	copySankey.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copySankey.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copySankey.pointWidth = [self.pointWidth copyWithZone: zone];
	copySankey.groupPadding = [self.groupPadding copyWithZone: zone];
	copySankey.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copySankey.depth = [self.depth copyWithZone: zone];
	copySankey.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copySankey.grouping = [self.grouping copyWithZone: zone];
	copySankey.linecap = [self.linecap copyWithZone: zone];
	copySankey.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copySankey.colorIndex = [self.colorIndex copyWithZone: zone];
	copySankey.clip = [self.clip copyWithZone: zone];
	copySankey.negativeColor = [self.negativeColor copyWithZone: zone];
	copySankey.color = [self.color copyWithZone: zone];
	copySankey.pointInterval = [self.pointInterval copyWithZone: zone];
	copySankey.colorKey = [self.colorKey copyWithZone: zone];
	copySankey.softThreshold = [self.softThreshold copyWithZone: zone];
	copySankey.point = [self.point copyWithZone: zone];
	copySankey.dataSorting = [self.dataSorting copyWithZone: zone];
	copySankey.marker = [self.marker copyWithZone: zone];
	copySankey.label = [self.label copyWithZone: zone];
	copySankey.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copySankey.cursor = [self.cursor copyWithZone: zone];
	copySankey.dashStyle = [self.dashStyle copyWithZone: zone];
	copySankey.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copySankey.connectNulls = [self.connectNulls copyWithZone: zone];
	copySankey.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copySankey.custom = [self.custom copyWithZone: zone];
	copySankey.onPoint = [self.onPoint copyWithZone: zone];
	copySankey.stacking = [self.stacking copyWithZone: zone];
	copySankey.animation = [self.animation copyWithZone: zone];
	copySankey.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copySankey.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copySankey.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copySankey.boostBlending = [self.boostBlending copyWithZone: zone];
	copySankey.events = [self.events copyWithZone: zone];
	copySankey.animationLimit = [self.animationLimit copyWithZone: zone];
	copySankey.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copySankey.definition = [self.definition copyWithZone: zone];
	copySankey.keys = [self.keys copyWithZone: zone];
	copySankey.selected = [self.selected copyWithZone: zone];
	copySankey.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copySankey.accessibility = [self.accessibility copyWithZone: zone];
	copySankey.step = [self.step copyWithZone: zone];
	copySankey.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copySankey.shadow = [self.shadow copyWithZone: zone];
	copySankey.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copySankey.colorAxis = [self.colorAxis copyWithZone: zone];
	copySankey.zones = [self.zones copyWithZone: zone];
	copySankey.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copySankey.lineWidth = [self.lineWidth copyWithZone: zone];
	copySankey.crisp = [self.crisp copyWithZone: zone];
	copySankey.visible = [self.visible copyWithZone: zone];
	copySankey.linkedTo = [self.linkedTo copyWithZone: zone];
	copySankey.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copySankey.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copySankey.className = [self.className copyWithZone: zone];
	copySankey.pointStart = [self.pointStart copyWithZone: zone];
	copySankey.connectEnds = [self.connectEnds copyWithZone: zone];
	copySankey.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copySankey.nodes = [self.nodes copyWithZone: zone];
	copySankey.data = [self.data copyWithZone: zone];
	copySankey.id = [self.id copyWithZone: zone];
	copySankey.index = [self.index copyWithZone: zone];
	copySankey.legendIndex = [self.legendIndex copyWithZone: zone];
	copySankey.name = [self.name copyWithZone: zone];
	copySankey.stack = [self.stack copyWithZone: zone];
	copySankey.type = [self.type copyWithZone: zone];
	copySankey.xAxis = [self.xAxis copyWithZone: zone];
	copySankey.yAxis = [self.yAxis copyWithZone: zone];
	copySankey.zIndex = [self.zIndex copyWithZone: zone];
	return copySankey;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.minLinkWidth) {
		params[@"minLinkWidth"] = self.minLinkWidth;
	}
	if (self.curveFactor) {
		params[@"curveFactor"] = self.curveFactor;
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
	return params;
}

# pragma mark - Setters

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

-(void)setCurveFactor:(NSNumber *)curveFactor {
	NSNumber *oldValue = _curveFactor;
	_curveFactor = curveFactor;
	[self updateNSObject:oldValue newValue:curveFactor propertyName:@"curveFactor"];
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

-(void)setNodes:(NSArray <HINodes *> *)nodes {
	NSArray <HINodes *> *oldValue = _nodes;
	_nodes = nodes;
	[self updateArrayObject:oldValue newValue:nodes propertyName:@"nodes"];
}

@end