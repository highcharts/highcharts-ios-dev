#import "HIChartsJSONSerializableSubclass.h"
#import "HIArcdiagram.h"

@implementation HIArcdiagram

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"arcdiagram";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIArcdiagram *copyArcdiagram = [[HIArcdiagram allocWithZone: zone] init];
	copyArcdiagram.linkRadius = [self.linkRadius copyWithZone: zone];
	copyArcdiagram.offset = [self.offset copyWithZone: zone];
	copyArcdiagram.marker = [self.marker copyWithZone: zone];
	copyArcdiagram.linkWeight = [self.linkWeight copyWithZone: zone];
	copyArcdiagram.data = [self.data copyWithZone: zone];
	copyArcdiagram.nodes = [self.nodes copyWithZone: zone];
	copyArcdiagram.id = [self.id copyWithZone: zone];
	copyArcdiagram.index = [self.index copyWithZone: zone];
	copyArcdiagram.legendIndex = [self.legendIndex copyWithZone: zone];
	copyArcdiagram.name = [self.name copyWithZone: zone];
	copyArcdiagram.type = [self.type copyWithZone: zone];
	copyArcdiagram.zIndex = [self.zIndex copyWithZone: zone];
	copyArcdiagram.reversed = [self.reversed copyWithZone: zone];
	copyArcdiagram.equalNodes = [self.equalNodes copyWithZone: zone];
	copyArcdiagram.centeredLinks = [self.centeredLinks copyWithZone: zone];
	copyArcdiagram.dataLabels = [self.dataLabels copyWithZone: zone];
	copyArcdiagram.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyArcdiagram.opacity = [self.opacity copyWithZone: zone];
	copyArcdiagram.minLinkWidth = [self.minLinkWidth copyWithZone: zone];
	copyArcdiagram.tooltip = [self.tooltip copyWithZone: zone];
	copyArcdiagram.states = [self.states copyWithZone: zone];
	copyArcdiagram.nodeWidth = [self.nodeWidth copyWithZone: zone];
	copyArcdiagram.levels = [self.levels copyWithZone: zone];
	copyArcdiagram.borderWidth = [self.borderWidth copyWithZone: zone];
	copyArcdiagram.linkOpacity = [self.linkOpacity copyWithZone: zone];
	copyArcdiagram.showInLegend = [self.showInLegend copyWithZone: zone];
	copyArcdiagram.pointPadding = [self.pointPadding copyWithZone: zone];
	copyArcdiagram.borderRadius = [self.borderRadius copyWithZone: zone];
	copyArcdiagram.pointRange = [self.pointRange copyWithZone: zone];
	copyArcdiagram.minPointLength = [self.minPointLength copyWithZone: zone];
	copyArcdiagram.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyArcdiagram.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyArcdiagram.colors = [self.colors copyWithZone: zone];
	copyArcdiagram.threshold = [self.threshold copyWithZone: zone];
	copyArcdiagram.borderColor = [self.borderColor copyWithZone: zone];
	copyArcdiagram.edgeColor = [self.edgeColor copyWithZone: zone];
	copyArcdiagram.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyArcdiagram.pointWidth = [self.pointWidth copyWithZone: zone];
	copyArcdiagram.groupPadding = [self.groupPadding copyWithZone: zone];
	copyArcdiagram.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyArcdiagram.depth = [self.depth copyWithZone: zone];
	copyArcdiagram.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyArcdiagram.grouping = [self.grouping copyWithZone: zone];
	copyArcdiagram.linecap = [self.linecap copyWithZone: zone];
	copyArcdiagram.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyArcdiagram.colorIndex = [self.colorIndex copyWithZone: zone];
	copyArcdiagram.clip = [self.clip copyWithZone: zone];
	copyArcdiagram.negativeColor = [self.negativeColor copyWithZone: zone];
	copyArcdiagram.color = [self.color copyWithZone: zone];
	copyArcdiagram.point = [self.point copyWithZone: zone];
	copyArcdiagram.label = [self.label copyWithZone: zone];
	copyArcdiagram.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyArcdiagram.cursor = [self.cursor copyWithZone: zone];
	copyArcdiagram.dashStyle = [self.dashStyle copyWithZone: zone];
	copyArcdiagram.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyArcdiagram.custom = [self.custom copyWithZone: zone];
	copyArcdiagram.onPoint = [self.onPoint copyWithZone: zone];
	copyArcdiagram.animation = [self.animation copyWithZone: zone];
	copyArcdiagram.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyArcdiagram.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyArcdiagram.events = [self.events copyWithZone: zone];
	copyArcdiagram.animationLimit = [self.animationLimit copyWithZone: zone];
	copyArcdiagram.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyArcdiagram.definition = [self.definition copyWithZone: zone];
	copyArcdiagram.keys = [self.keys copyWithZone: zone];
	copyArcdiagram.selected = [self.selected copyWithZone: zone];
	copyArcdiagram.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyArcdiagram.accessibility = [self.accessibility copyWithZone: zone];
	copyArcdiagram.shadow = [self.shadow copyWithZone: zone];
	copyArcdiagram.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyArcdiagram.zones = [self.zones copyWithZone: zone];
	copyArcdiagram.lineWidth = [self.lineWidth copyWithZone: zone];
	copyArcdiagram.crisp = [self.crisp copyWithZone: zone];
	copyArcdiagram.visible = [self.visible copyWithZone: zone];
	copyArcdiagram.linkedTo = [self.linkedTo copyWithZone: zone];
	copyArcdiagram.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyArcdiagram.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyArcdiagram.className = [self.className copyWithZone: zone];
	copyArcdiagram.boostBlending = [self.boostBlending copyWithZone: zone];
	copyArcdiagram.boostThreshold = [self.boostThreshold copyWithZone: zone];
	return copyArcdiagram;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.linkRadius) {
		params[@"linkRadius"] = self.linkRadius;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.linkWeight) {
		params[@"linkWeight"] = self.linkWeight;
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
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.equalNodes) {
		params[@"equalNodes"] = self.equalNodes;
	}
	if (self.centeredLinks) {
		params[@"centeredLinks"] = self.centeredLinks;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.minLinkWidth) {
		params[@"minLinkWidth"] = self.minLinkWidth;
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

-(void)setLinkRadius:(NSNumber *)linkRadius {
	NSNumber *oldValue = _linkRadius;
	_linkRadius = linkRadius;
	[self updateNSObject:oldValue newValue:linkRadius propertyName:@"linkRadius"];
}

-(void)setOffset:(NSString *)offset {
	NSString *oldValue = _offset;
	_offset = offset;
	[self updateNSObject:oldValue newValue:offset propertyName:@"offset"];
}

-(void)setLinkWeight:(NSNumber *)linkWeight {
	NSNumber *oldValue = _linkWeight;
	_linkWeight = linkWeight;
	[self updateNSObject:oldValue newValue:linkWeight propertyName:@"linkWeight"];
}

-(void)setNodes:(NSArray <HINodes *> *)nodes {
	NSArray <HINodes *> *oldValue = _nodes;
	_nodes = nodes;
	[self updateArrayObject:oldValue newValue:nodes propertyName:@"nodes"];
}

-(void)setReversed:(NSNumber *)reversed {
	NSNumber *oldValue = _reversed;
	_reversed = reversed;
	[self updateNSObject:oldValue newValue:reversed propertyName:@"reversed"];
}

-(void)setEqualNodes:(NSNumber *)equalNodes {
	NSNumber *oldValue = _equalNodes;
	_equalNodes = equalNodes;
	[self updateNSObject:oldValue newValue:equalNodes propertyName:@"equalNodes"];
}

-(void)setCenteredLinks:(NSNumber *)centeredLinks {
	NSNumber *oldValue = _centeredLinks;
	_centeredLinks = centeredLinks;
	[self updateNSObject:oldValue newValue:centeredLinks propertyName:@"centeredLinks"];
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