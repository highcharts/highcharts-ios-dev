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
	copyNetworkgraph.data = [self.data copyWithZone: zone];
	copyNetworkgraph.layoutAlgorithm = [self.layoutAlgorithm copyWithZone: zone];
	copyNetworkgraph.id = [self.id copyWithZone: zone];
	copyNetworkgraph.index = [self.index copyWithZone: zone];
	copyNetworkgraph.legendIndex = [self.legendIndex copyWithZone: zone];
	copyNetworkgraph.name = [self.name copyWithZone: zone];
	copyNetworkgraph.type = [self.type copyWithZone: zone];
	copyNetworkgraph.zIndex = [self.zIndex copyWithZone: zone];
	copyNetworkgraph.dataLabels = [self.dataLabels copyWithZone: zone];
	copyNetworkgraph.draggable = [self.draggable copyWithZone: zone];
	copyNetworkgraph.link = [self.link copyWithZone: zone];
	copyNetworkgraph.marker = [self.marker copyWithZone: zone];
	copyNetworkgraph.showInLegend = [self.showInLegend copyWithZone: zone];
	copyNetworkgraph.point = [self.point copyWithZone: zone];
	copyNetworkgraph.selected = [self.selected copyWithZone: zone];
	copyNetworkgraph.colorIndex = [self.colorIndex copyWithZone: zone];
	copyNetworkgraph.clip = [self.clip copyWithZone: zone];
	copyNetworkgraph.color = [self.color copyWithZone: zone];
	copyNetworkgraph.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyNetworkgraph.states = [self.states copyWithZone: zone];
	copyNetworkgraph.tooltip = [self.tooltip copyWithZone: zone];
	copyNetworkgraph.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyNetworkgraph.borderColor = [self.borderColor copyWithZone: zone];
	copyNetworkgraph.className = [self.className copyWithZone: zone];
	copyNetworkgraph.dashStyle = [self.dashStyle copyWithZone: zone];
	copyNetworkgraph.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyNetworkgraph.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyNetworkgraph.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyNetworkgraph.events = [self.events copyWithZone: zone];
	copyNetworkgraph.definition = [self.definition copyWithZone: zone];
	copyNetworkgraph.keys = [self.keys copyWithZone: zone];
	copyNetworkgraph.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyNetworkgraph.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyNetworkgraph.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyNetworkgraph.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyNetworkgraph.shadow = [self.shadow copyWithZone: zone];
	copyNetworkgraph.zones = [self.zones copyWithZone: zone];
	copyNetworkgraph.lineWidth = [self.lineWidth copyWithZone: zone];
	copyNetworkgraph.visible = [self.visible copyWithZone: zone];
	copyNetworkgraph.linkedTo = [self.linkedTo copyWithZone: zone];
	copyNetworkgraph.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyNetworkgraph.cursor = [self.cursor copyWithZone: zone];
	copyNetworkgraph.borderWidth = [self.borderWidth copyWithZone: zone];
	return copyNetworkgraph;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
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

-(void)setLayoutAlgorithm:(HILayoutAlgorithm *)layoutAlgorithm {
	HILayoutAlgorithm *oldValue = _layoutAlgorithm;
	if(self.layoutAlgorithm) {
		[self removeObserver:self forKeyPath:@"layoutAlgorithm.isUpdated"];
	}
	_layoutAlgorithm = layoutAlgorithm;
	[self updateHIObject:oldValue newValue:layoutAlgorithm propertyName:@"layoutAlgorithm"];
}

-(void)setDraggable:(NSNumber *)draggable {
	_draggable = draggable;
	[self updateNSObject:@"draggable"];
}

-(void)setLink:(HILink *)link {
	HILink *oldValue = _link;
	if(self.link) {
		[self removeObserver:self forKeyPath:@"link.isUpdated"];
	}
	_link = link;
	[self updateHIObject:oldValue newValue:link propertyName:@"link"];
}

@end