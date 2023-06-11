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
	copySankey.colors = [self.colors copyWithZone: zone];
	copySankey.borderColor = [self.borderColor copyWithZone: zone];
	copySankey.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copySankey.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copySankey.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copySankey.colorIndex = [self.colorIndex copyWithZone: zone];
	copySankey.clip = [self.clip copyWithZone: zone];
	copySankey.color = [self.color copyWithZone: zone];
	copySankey.point = [self.point copyWithZone: zone];
	copySankey.label = [self.label copyWithZone: zone];
	copySankey.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copySankey.cursor = [self.cursor copyWithZone: zone];
	copySankey.dashStyle = [self.dashStyle copyWithZone: zone];
	copySankey.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copySankey.custom = [self.custom copyWithZone: zone];
	copySankey.onPoint = [self.onPoint copyWithZone: zone];
	copySankey.animation = [self.animation copyWithZone: zone];
	copySankey.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copySankey.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copySankey.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copySankey.events = [self.events copyWithZone: zone];
	copySankey.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copySankey.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copySankey.definition = [self.definition copyWithZone: zone];
	copySankey.keys = [self.keys copyWithZone: zone];
	copySankey.selected = [self.selected copyWithZone: zone];
	copySankey.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copySankey.accessibility = [self.accessibility copyWithZone: zone];
	copySankey.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copySankey.sonification = [self.sonification copyWithZone: zone];
	copySankey.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copySankey.visible = [self.visible copyWithZone: zone];
	copySankey.linkedTo = [self.linkedTo copyWithZone: zone];
	copySankey.className = [self.className copyWithZone: zone];
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
	if (self.centerInCategory) {
		params[@"centerInCategory"] = self.centerInCategory;
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

-(void)setCenterInCategory:(NSNumber *)centerInCategory {
	NSNumber *oldValue = _centerInCategory;
	_centerInCategory = centerInCategory;
	[self updateNSObject:oldValue newValue:centerInCategory propertyName:@"centerInCategory"];
}

-(void)setNodes:(NSArray <HINodes *> *)nodes {
	NSArray <HINodes *> *oldValue = _nodes;
	_nodes = nodes;
	[self updateArrayObject:oldValue newValue:nodes propertyName:@"nodes"];
}

@end