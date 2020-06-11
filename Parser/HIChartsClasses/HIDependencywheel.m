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
	copyDependencywheel.startAngle = [self.startAngle copyWithZone: zone];
	copyDependencywheel.center = [self.center copyWithZone: zone];
	copyDependencywheel.curveFactor = [self.curveFactor copyWithZone: zone];
	copyDependencywheel.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyDependencywheel.minLinkWidth = [self.minLinkWidth copyWithZone: zone];
	copyDependencywheel.nodePadding = [self.nodePadding copyWithZone: zone];
	copyDependencywheel.tooltip = [self.tooltip copyWithZone: zone];
	copyDependencywheel.dataLabels = [self.dataLabels copyWithZone: zone];
	copyDependencywheel.states = [self.states copyWithZone: zone];
	copyDependencywheel.nodeWidth = [self.nodeWidth copyWithZone: zone];
	copyDependencywheel.levels = [self.levels copyWithZone: zone];
	copyDependencywheel.borderWidth = [self.borderWidth copyWithZone: zone];
	copyDependencywheel.linkOpacity = [self.linkOpacity copyWithZone: zone];
	copyDependencywheel.showInLegend = [self.showInLegend copyWithZone: zone];
	copyDependencywheel.colors = [self.colors copyWithZone: zone];
	copyDependencywheel.borderColor = [self.borderColor copyWithZone: zone];
	copyDependencywheel.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyDependencywheel.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyDependencywheel.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyDependencywheel.selected = [self.selected copyWithZone: zone];
	copyDependencywheel.colorIndex = [self.colorIndex copyWithZone: zone];
	copyDependencywheel.clip = [self.clip copyWithZone: zone];
	copyDependencywheel.color = [self.color copyWithZone: zone];
	copyDependencywheel.point = [self.point copyWithZone: zone];
	copyDependencywheel.label = [self.label copyWithZone: zone];
	copyDependencywheel.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyDependencywheel.cursor = [self.cursor copyWithZone: zone];
	copyDependencywheel.dashStyle = [self.dashStyle copyWithZone: zone];
	copyDependencywheel.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyDependencywheel.custom = [self.custom copyWithZone: zone];
	copyDependencywheel.animation = [self.animation copyWithZone: zone];
	copyDependencywheel.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyDependencywheel.boostBlending = [self.boostBlending copyWithZone: zone];
	copyDependencywheel.events = [self.events copyWithZone: zone];
	copyDependencywheel.opacity = [self.opacity copyWithZone: zone];
	copyDependencywheel.definition = [self.definition copyWithZone: zone];
	copyDependencywheel.keys = [self.keys copyWithZone: zone];
	copyDependencywheel.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyDependencywheel.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyDependencywheel.accessibility = [self.accessibility copyWithZone: zone];
	copyDependencywheel.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyDependencywheel.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyDependencywheel.visible = [self.visible copyWithZone: zone];
	copyDependencywheel.linkedTo = [self.linkedTo copyWithZone: zone];
	copyDependencywheel.className = [self.className copyWithZone: zone];
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
	return params;
}

# pragma mark - Setters

-(void)setNodes:(NSArray <HINodes *> *)nodes {
	NSArray <HINodes *> *oldValue = _nodes;
	_nodes = nodes;
	[self updateArrayObject:oldValue newValue:nodes propertyName:@"nodes"];
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

@end