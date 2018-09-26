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
	copySankey.curveFactor = [self.curveFactor copyWithZone: zone];
	copySankey.nodePadding = [self.nodePadding copyWithZone: zone];
	copySankey.tooltip = [self.tooltip copyWithZone: zone];
	copySankey.dataLabels = [self.dataLabels copyWithZone: zone];
	copySankey.states = [self.states copyWithZone: zone];
	copySankey.nodeWidth = [self.nodeWidth copyWithZone: zone];
	copySankey.linkOpacity = [self.linkOpacity copyWithZone: zone];
	copySankey.showInLegend = [self.showInLegend copyWithZone: zone];
	copySankey.minPointLength = [self.minPointLength copyWithZone: zone];
	copySankey.colors = [self.colors copyWithZone: zone];
	copySankey.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copySankey.selected = [self.selected copyWithZone: zone];
	copySankey.colorIndex = [self.colorIndex copyWithZone: zone];
	copySankey.clip = [self.clip copyWithZone: zone];
	copySankey.point = [self.point copyWithZone: zone];
	copySankey.color = [self.color copyWithZone: zone];
	copySankey.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copySankey.cursor = [self.cursor copyWithZone: zone];
	copySankey.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copySankey.label = [self.label copyWithZone: zone];
	copySankey.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copySankey.events = [self.events copyWithZone: zone];
	copySankey.definition = [self.definition copyWithZone: zone];
	copySankey.keys = [self.keys copyWithZone: zone];
	copySankey.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copySankey.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copySankey.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copySankey.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copySankey.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copySankey.animation = [self.animation copyWithZone: zone];
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
	if (self.curveFactor) {
		params[@"curveFactor"] = self.curveFactor;
	}
	if (self.nodePadding) {
		params[@"nodePadding"] = self.nodePadding;
	}
	if (self.nodeWidth) {
		params[@"nodeWidth"] = self.nodeWidth;
	}
	if (self.linkOpacity) {
		params[@"linkOpacity"] = self.linkOpacity;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
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
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setCurveFactor:(NSNumber *)curveFactor {
	_curveFactor = curveFactor;
	[self updateNSObject:@"curveFactor"];
}

-(void)setNodePadding:(NSNumber *)nodePadding {
	_nodePadding = nodePadding;
	[self updateNSObject:@"nodePadding"];
}

-(void)setNodeWidth:(NSNumber *)nodeWidth {
	_nodeWidth = nodeWidth;
	[self updateNSObject:@"nodeWidth"];
}

-(void)setLinkOpacity:(NSNumber *)linkOpacity {
	_linkOpacity = linkOpacity;
	[self updateNSObject:@"linkOpacity"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	_minPointLength = minPointLength;
	[self updateNSObject:@"minPointLength"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setNodes:(NSArray <HINodes *> *)nodes {
	NSArray <HINodes *> *oldValue = _nodes;
	_nodes = nodes;
	[self updateArrayObject:oldValue newValue:nodes propertyName:@"nodes"];
}

@end