#import "HIChartsJSONSerializableSubclass.h"
#import "HIOrganization.h"

@implementation HIOrganization

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"organization";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIOrganization *copyOrganization = [[HIOrganization allocWithZone: zone] init];
	copyOrganization.link = [self.link copyWithZone: zone];
	copyOrganization.nodes = [self.nodes copyWithZone: zone];
	copyOrganization.data = [self.data copyWithZone: zone];
	copyOrganization.id = [self.id copyWithZone: zone];
	copyOrganization.index = [self.index copyWithZone: zone];
	copyOrganization.legendIndex = [self.legendIndex copyWithZone: zone];
	copyOrganization.name = [self.name copyWithZone: zone];
	copyOrganization.stack = [self.stack copyWithZone: zone];
	copyOrganization.type = [self.type copyWithZone: zone];
	copyOrganization.xAxis = [self.xAxis copyWithZone: zone];
	copyOrganization.yAxis = [self.yAxis copyWithZone: zone];
	copyOrganization.zIndex = [self.zIndex copyWithZone: zone];
	copyOrganization.borderColor = [self.borderColor copyWithZone: zone];
	copyOrganization.nodeWidth = [self.nodeWidth copyWithZone: zone];
	copyOrganization.borderRadius = [self.borderRadius copyWithZone: zone];
	copyOrganization.hangingIndentTranslation = [self.hangingIndentTranslation copyWithZone: zone];
	copyOrganization.tooltip = [self.tooltip copyWithZone: zone];
	copyOrganization.dataLabels = [self.dataLabels copyWithZone: zone];
	copyOrganization.minNodeLength = [self.minNodeLength copyWithZone: zone];
	copyOrganization.borderWidth = [self.borderWidth copyWithZone: zone];
	copyOrganization.hangingIndent = [self.hangingIndent copyWithZone: zone];
	copyOrganization.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyOrganization.opacity = [self.opacity copyWithZone: zone];
	copyOrganization.minLinkWidth = [self.minLinkWidth copyWithZone: zone];
	copyOrganization.curveFactor = [self.curveFactor copyWithZone: zone];
	copyOrganization.nodePadding = [self.nodePadding copyWithZone: zone];
	copyOrganization.states = [self.states copyWithZone: zone];
	copyOrganization.levels = [self.levels copyWithZone: zone];
	copyOrganization.linkOpacity = [self.linkOpacity copyWithZone: zone];
	copyOrganization.showInLegend = [self.showInLegend copyWithZone: zone];
	copyOrganization.pointPadding = [self.pointPadding copyWithZone: zone];
	copyOrganization.pointRange = [self.pointRange copyWithZone: zone];
	copyOrganization.minPointLength = [self.minPointLength copyWithZone: zone];
	copyOrganization.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyOrganization.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyOrganization.colors = [self.colors copyWithZone: zone];
	copyOrganization.dragDrop = [self.dragDrop copyWithZone: zone];
	copyOrganization.threshold = [self.threshold copyWithZone: zone];
	copyOrganization.edgeColor = [self.edgeColor copyWithZone: zone];
	copyOrganization.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyOrganization.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyOrganization.pointWidth = [self.pointWidth copyWithZone: zone];
	copyOrganization.groupPadding = [self.groupPadding copyWithZone: zone];
	copyOrganization.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyOrganization.depth = [self.depth copyWithZone: zone];
	copyOrganization.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyOrganization.grouping = [self.grouping copyWithZone: zone];
	copyOrganization.linecap = [self.linecap copyWithZone: zone];
	copyOrganization.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyOrganization.colorIndex = [self.colorIndex copyWithZone: zone];
	copyOrganization.clip = [self.clip copyWithZone: zone];
	copyOrganization.negativeColor = [self.negativeColor copyWithZone: zone];
	copyOrganization.color = [self.color copyWithZone: zone];
	copyOrganization.pointInterval = [self.pointInterval copyWithZone: zone];
	copyOrganization.colorKey = [self.colorKey copyWithZone: zone];
	copyOrganization.softThreshold = [self.softThreshold copyWithZone: zone];
	copyOrganization.point = [self.point copyWithZone: zone];
	copyOrganization.marker = [self.marker copyWithZone: zone];
	copyOrganization.label = [self.label copyWithZone: zone];
	copyOrganization.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyOrganization.cursor = [self.cursor copyWithZone: zone];
	copyOrganization.dashStyle = [self.dashStyle copyWithZone: zone];
	copyOrganization.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyOrganization.connectNulls = [self.connectNulls copyWithZone: zone];
	copyOrganization.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyOrganization.custom = [self.custom copyWithZone: zone];
	copyOrganization.onPoint = [self.onPoint copyWithZone: zone];
	copyOrganization.stacking = [self.stacking copyWithZone: zone];
	copyOrganization.animation = [self.animation copyWithZone: zone];
	copyOrganization.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyOrganization.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyOrganization.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyOrganization.events = [self.events copyWithZone: zone];
	copyOrganization.animationLimit = [self.animationLimit copyWithZone: zone];
	copyOrganization.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyOrganization.definition = [self.definition copyWithZone: zone];
	copyOrganization.keys = [self.keys copyWithZone: zone];
	copyOrganization.selected = [self.selected copyWithZone: zone];
	copyOrganization.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyOrganization.accessibility = [self.accessibility copyWithZone: zone];
	copyOrganization.step = [self.step copyWithZone: zone];
	copyOrganization.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyOrganization.shadow = [self.shadow copyWithZone: zone];
	copyOrganization.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyOrganization.colorAxis = [self.colorAxis copyWithZone: zone];
	copyOrganization.zones = [self.zones copyWithZone: zone];
	copyOrganization.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyOrganization.lineWidth = [self.lineWidth copyWithZone: zone];
	copyOrganization.crisp = [self.crisp copyWithZone: zone];
	copyOrganization.visible = [self.visible copyWithZone: zone];
	copyOrganization.linkedTo = [self.linkedTo copyWithZone: zone];
	copyOrganization.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyOrganization.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyOrganization.className = [self.className copyWithZone: zone];
	copyOrganization.pointStart = [self.pointStart copyWithZone: zone];
	copyOrganization.connectEnds = [self.connectEnds copyWithZone: zone];
	copyOrganization.dataSorting = [self.dataSorting copyWithZone: zone];
	copyOrganization.boostBlending = [self.boostBlending copyWithZone: zone];
	copyOrganization.boostThreshold = [self.boostThreshold copyWithZone: zone];
	return copyOrganization;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.link) {
		params[@"link"] = [self.link getParams];
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
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.nodeWidth) {
		params[@"nodeWidth"] = self.nodeWidth;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.hangingIndentTranslation) {
		params[@"hangingIndentTranslation"] = self.hangingIndentTranslation;
	}
	if (self.minNodeLength) {
		params[@"minNodeLength"] = self.minNodeLength;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.hangingIndent) {
		params[@"hangingIndent"] = self.hangingIndent;
	}
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
	if (self.linkOpacity) {
		params[@"linkOpacity"] = self.linkOpacity;
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

-(void)setLink:(HILink *)link {
	HILink *oldValue = _link;
	_link = link;
	[self updateHIObject:oldValue newValue:link propertyName:@"link"];
}

-(void)setNodes:(NSArray <HINodes *> *)nodes {
	NSArray <HINodes *> *oldValue = _nodes;
	_nodes = nodes;
	[self updateArrayObject:oldValue newValue:nodes propertyName:@"nodes"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setNodeWidth:(NSNumber *)nodeWidth {
	NSNumber *oldValue = _nodeWidth;
	_nodeWidth = nodeWidth;
	[self updateNSObject:oldValue newValue:nodeWidth propertyName:@"nodeWidth"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setHangingIndentTranslation:(NSString *)hangingIndentTranslation {
	NSString *oldValue = _hangingIndentTranslation;
	_hangingIndentTranslation = hangingIndentTranslation;
	[self updateNSObject:oldValue newValue:hangingIndentTranslation propertyName:@"hangingIndentTranslation"];
}

-(void)setMinNodeLength:(NSNumber *)minNodeLength {
	NSNumber *oldValue = _minNodeLength;
	_minNodeLength = minNodeLength;
	[self updateNSObject:oldValue newValue:minNodeLength propertyName:@"minNodeLength"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setHangingIndent:(NSNumber *)hangingIndent {
	NSNumber *oldValue = _hangingIndent;
	_hangingIndent = hangingIndent;
	[self updateNSObject:oldValue newValue:hangingIndent propertyName:@"hangingIndent"];
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

-(void)setLevels:(NSArray <HILevels *> *)levels {
	NSArray <HILevels *> *oldValue = _levels;
	_levels = levels;
	[self updateArrayObject:oldValue newValue:levels propertyName:@"levels"];
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