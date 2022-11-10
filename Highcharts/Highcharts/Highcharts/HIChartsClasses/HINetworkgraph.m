#import "HIChartsJSONSerializableSubclass.h"
#import "HINetworkgraph.h"

@implementation HINetworkgraph

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"networkgraph";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HINetworkgraph *copyNetworkgraph = [[HINetworkgraph allocWithZone: zone] init];
	copyNetworkgraph.nodes = [self.nodes copyWithZone: zone];
	copyNetworkgraph.data = [self.data copyWithZone: zone];
	copyNetworkgraph.id = [self.id copyWithZone: zone];
	copyNetworkgraph.index = [self.index copyWithZone: zone];
	copyNetworkgraph.legendIndex = [self.legendIndex copyWithZone: zone];
	copyNetworkgraph.name = [self.name copyWithZone: zone];
	copyNetworkgraph.stack = [self.stack copyWithZone: zone];
	copyNetworkgraph.type = [self.type copyWithZone: zone];
	copyNetworkgraph.xAxis = [self.xAxis copyWithZone: zone];
	copyNetworkgraph.yAxis = [self.yAxis copyWithZone: zone];
	copyNetworkgraph.zIndex = [self.zIndex copyWithZone: zone];
	copyNetworkgraph.states = [self.states copyWithZone: zone];
	copyNetworkgraph.layoutAlgorithm = [self.layoutAlgorithm copyWithZone: zone];
	copyNetworkgraph.dataLabels = [self.dataLabels copyWithZone: zone];
	copyNetworkgraph.draggable = [self.draggable copyWithZone: zone];
	copyNetworkgraph.link = [self.link copyWithZone: zone];
	copyNetworkgraph.marker = [self.marker copyWithZone: zone];
	copyNetworkgraph.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyNetworkgraph.showInLegend = [self.showInLegend copyWithZone: zone];
	copyNetworkgraph.linecap = [self.linecap copyWithZone: zone];
	copyNetworkgraph.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyNetworkgraph.colorIndex = [self.colorIndex copyWithZone: zone];
	copyNetworkgraph.clip = [self.clip copyWithZone: zone];
	copyNetworkgraph.negativeColor = [self.negativeColor copyWithZone: zone];
	copyNetworkgraph.color = [self.color copyWithZone: zone];
	copyNetworkgraph.pointInterval = [self.pointInterval copyWithZone: zone];
	copyNetworkgraph.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyNetworkgraph.colorKey = [self.colorKey copyWithZone: zone];
	copyNetworkgraph.softThreshold = [self.softThreshold copyWithZone: zone];
	copyNetworkgraph.dragDrop = [self.dragDrop copyWithZone: zone];
	copyNetworkgraph.point = [self.point copyWithZone: zone];
	copyNetworkgraph.dataSorting = [self.dataSorting copyWithZone: zone];
	copyNetworkgraph.tooltip = [self.tooltip copyWithZone: zone];
	copyNetworkgraph.label = [self.label copyWithZone: zone];
	copyNetworkgraph.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyNetworkgraph.cursor = [self.cursor copyWithZone: zone];
	copyNetworkgraph.dashStyle = [self.dashStyle copyWithZone: zone];
	copyNetworkgraph.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyNetworkgraph.connectNulls = [self.connectNulls copyWithZone: zone];
	copyNetworkgraph.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyNetworkgraph.custom = [self.custom copyWithZone: zone];
	copyNetworkgraph.onPoint = [self.onPoint copyWithZone: zone];
	copyNetworkgraph.stacking = [self.stacking copyWithZone: zone];
	copyNetworkgraph.animation = [self.animation copyWithZone: zone];
	copyNetworkgraph.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyNetworkgraph.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyNetworkgraph.threshold = [self.threshold copyWithZone: zone];
	copyNetworkgraph.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyNetworkgraph.boostBlending = [self.boostBlending copyWithZone: zone];
	copyNetworkgraph.events = [self.events copyWithZone: zone];
	copyNetworkgraph.opacity = [self.opacity copyWithZone: zone];
	copyNetworkgraph.animationLimit = [self.animationLimit copyWithZone: zone];
	copyNetworkgraph.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyNetworkgraph.definition = [self.definition copyWithZone: zone];
	copyNetworkgraph.keys = [self.keys copyWithZone: zone];
	copyNetworkgraph.selected = [self.selected copyWithZone: zone];
	copyNetworkgraph.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyNetworkgraph.accessibility = [self.accessibility copyWithZone: zone];
	copyNetworkgraph.step = [self.step copyWithZone: zone];
	copyNetworkgraph.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyNetworkgraph.shadow = [self.shadow copyWithZone: zone];
	copyNetworkgraph.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyNetworkgraph.colorAxis = [self.colorAxis copyWithZone: zone];
	copyNetworkgraph.zones = [self.zones copyWithZone: zone];
	copyNetworkgraph.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyNetworkgraph.lineWidth = [self.lineWidth copyWithZone: zone];
	copyNetworkgraph.crisp = [self.crisp copyWithZone: zone];
	copyNetworkgraph.visible = [self.visible copyWithZone: zone];
	copyNetworkgraph.linkedTo = [self.linkedTo copyWithZone: zone];
	copyNetworkgraph.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyNetworkgraph.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyNetworkgraph.className = [self.className copyWithZone: zone];
	copyNetworkgraph.pointStart = [self.pointStart copyWithZone: zone];
	copyNetworkgraph.connectEnds = [self.connectEnds copyWithZone: zone];
	copyNetworkgraph.boostThreshold = [self.boostThreshold copyWithZone: zone];
	return copyNetworkgraph;
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
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = [self.layoutAlgorithm getParams];
	}
	if (self.draggable) {
		params[@"draggable"] = self.draggable;
	}
	if (self.link) {
		params[@"link"] = [self.link getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setNodes:(NSArray <HINodes *> *)nodes {
	NSArray <HINodes *> *oldValue = _nodes;
	_nodes = nodes;
	[self updateArrayObject:oldValue newValue:nodes propertyName:@"nodes"];
}

-(void)setLayoutAlgorithm:(HILayoutAlgorithm *)layoutAlgorithm {
	HILayoutAlgorithm *oldValue = _layoutAlgorithm;
	_layoutAlgorithm = layoutAlgorithm;
	[self updateHIObject:oldValue newValue:layoutAlgorithm propertyName:@"layoutAlgorithm"];
}

-(void)setDraggable:(NSNumber *)draggable {
	NSNumber *oldValue = _draggable;
	_draggable = draggable;
	[self updateNSObject:oldValue newValue:draggable propertyName:@"draggable"];
}

-(void)setLink:(HILink *)link {
	HILink *oldValue = _link;
	_link = link;
	[self updateHIObject:oldValue newValue:link propertyName:@"link"];
}

@end