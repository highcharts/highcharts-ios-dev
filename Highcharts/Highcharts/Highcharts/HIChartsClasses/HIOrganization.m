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
	copyOrganization.minNodeLength = [self.minNodeLength copyWithZone: zone];
	copyOrganization.borderRadius = [self.borderRadius copyWithZone: zone];
	copyOrganization.hangingIndentTranslation = [self.hangingIndentTranslation copyWithZone: zone];
	copyOrganization.nodeWidth = [self.nodeWidth copyWithZone: zone];
	copyOrganization.tooltip = [self.tooltip copyWithZone: zone];
	copyOrganization.dataLabels = [self.dataLabels copyWithZone: zone];
	copyOrganization.linkRadius = [self.linkRadius copyWithZone: zone];
	copyOrganization.linkColor = [self.linkColor copyWithZone: zone];
	copyOrganization.borderWidth = [self.borderWidth copyWithZone: zone];
	copyOrganization.linkLineWidth = [self.linkLineWidth copyWithZone: zone];
	copyOrganization.hangingIndent = [self.hangingIndent copyWithZone: zone];
	copyOrganization.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyOrganization.minLinkWidth = [self.minLinkWidth copyWithZone: zone];
	copyOrganization.nodePadding = [self.nodePadding copyWithZone: zone];
	copyOrganization.states = [self.states copyWithZone: zone];
	copyOrganization.levels = [self.levels copyWithZone: zone];
	copyOrganization.linkOpacity = [self.linkOpacity copyWithZone: zone];
	copyOrganization.showInLegend = [self.showInLegend copyWithZone: zone];
	copyOrganization.colors = [self.colors copyWithZone: zone];
	copyOrganization.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyOrganization.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyOrganization.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyOrganization.colorIndex = [self.colorIndex copyWithZone: zone];
	copyOrganization.clip = [self.clip copyWithZone: zone];
	copyOrganization.color = [self.color copyWithZone: zone];
	copyOrganization.point = [self.point copyWithZone: zone];
	copyOrganization.label = [self.label copyWithZone: zone];
	copyOrganization.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyOrganization.cursor = [self.cursor copyWithZone: zone];
	copyOrganization.dashStyle = [self.dashStyle copyWithZone: zone];
	copyOrganization.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyOrganization.custom = [self.custom copyWithZone: zone];
	copyOrganization.animation = [self.animation copyWithZone: zone];
	copyOrganization.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyOrganization.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyOrganization.events = [self.events copyWithZone: zone];
	copyOrganization.opacity = [self.opacity copyWithZone: zone];
	copyOrganization.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyOrganization.definition = [self.definition copyWithZone: zone];
	copyOrganization.keys = [self.keys copyWithZone: zone];
	copyOrganization.selected = [self.selected copyWithZone: zone];
	copyOrganization.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyOrganization.accessibility = [self.accessibility copyWithZone: zone];
	copyOrganization.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyOrganization.visible = [self.visible copyWithZone: zone];
	copyOrganization.linkedTo = [self.linkedTo copyWithZone: zone];
	copyOrganization.className = [self.className copyWithZone: zone];
	return copyOrganization;
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
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.minNodeLength) {
		params[@"minNodeLength"] = self.minNodeLength;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.hangingIndentTranslation) {
		params[@"hangingIndentTranslation"] = self.hangingIndentTranslation;
	}
	if (self.nodeWidth) {
		params[@"nodeWidth"] = self.nodeWidth;
	}
	if (self.linkRadius) {
		params[@"linkRadius"] = self.linkRadius;
	}
	if (self.linkColor) {
		params[@"linkColor"] = [self.linkColor getData];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.linkLineWidth) {
		params[@"linkLineWidth"] = self.linkLineWidth;
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
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.centerInCategory) {
		params[@"centerInCategory"] = self.centerInCategory;
	}
	return params;
}

# pragma mark - Setters

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

-(void)setMinNodeLength:(NSNumber *)minNodeLength {
	NSNumber *oldValue = _minNodeLength;
	_minNodeLength = minNodeLength;
	[self updateNSObject:oldValue newValue:minNodeLength propertyName:@"minNodeLength"];
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

-(void)setNodeWidth:(NSNumber *)nodeWidth {
	NSNumber *oldValue = _nodeWidth;
	_nodeWidth = nodeWidth;
	[self updateNSObject:oldValue newValue:nodeWidth propertyName:@"nodeWidth"];
}

-(void)setLinkRadius:(NSNumber *)linkRadius {
	NSNumber *oldValue = _linkRadius;
	_linkRadius = linkRadius;
	[self updateNSObject:oldValue newValue:linkRadius propertyName:@"linkRadius"];
}

-(void)setLinkColor:(HIColor *)linkColor {
	HIColor *oldValue = _linkColor;
	_linkColor = linkColor;
	[self updateHIObject:oldValue newValue:linkColor propertyName:@"linkColor"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setLinkLineWidth:(NSNumber *)linkLineWidth {
	NSNumber *oldValue = _linkLineWidth;
	_linkLineWidth = linkLineWidth;
	[self updateNSObject:oldValue newValue:linkLineWidth propertyName:@"linkLineWidth"];
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

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setCenterInCategory:(NSNumber *)centerInCategory {
	NSNumber *oldValue = _centerInCategory;
	_centerInCategory = centerInCategory;
	[self updateNSObject:oldValue newValue:centerInCategory propertyName:@"centerInCategory"];
}

@end