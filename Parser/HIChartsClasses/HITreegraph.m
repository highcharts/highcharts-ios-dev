#import "HIChartsJSONSerializableSubclass.h"
#import "HITreegraph.h"

@implementation HITreegraph

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"treegraph";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITreegraph *copyTreegraph = [[HITreegraph allocWithZone: zone] init];
	copyTreegraph.marker = [self.marker copyWithZone: zone];
	copyTreegraph.link = [self.link copyWithZone: zone];
	copyTreegraph.levels = [self.levels copyWithZone: zone];
	copyTreegraph.data = [self.data copyWithZone: zone];
	copyTreegraph.id = [self.id copyWithZone: zone];
	copyTreegraph.index = [self.index copyWithZone: zone];
	copyTreegraph.legendIndex = [self.legendIndex copyWithZone: zone];
	copyTreegraph.name = [self.name copyWithZone: zone];
	copyTreegraph.type = [self.type copyWithZone: zone];
	copyTreegraph.zIndex = [self.zIndex copyWithZone: zone];
	copyTreegraph.collapseButton = [self.collapseButton copyWithZone: zone];
	copyTreegraph.reversed = [self.reversed copyWithZone: zone];
	copyTreegraph.tooltip = [self.tooltip copyWithZone: zone];
	copyTreegraph.dataLabels = [self.dataLabels copyWithZone: zone];
	copyTreegraph.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyTreegraph.borderRadius = [self.borderRadius copyWithZone: zone];
	copyTreegraph.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyTreegraph.states = [self.states copyWithZone: zone];
	copyTreegraph.colors = [self.colors copyWithZone: zone];
	copyTreegraph.sortIndex = [self.sortIndex copyWithZone: zone];
	copyTreegraph.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyTreegraph.breadcrumbs = [self.breadcrumbs copyWithZone: zone];
	copyTreegraph.allowTraversingTree = [self.allowTraversingTree copyWithZone: zone];
	copyTreegraph.events = [self.events copyWithZone: zone];
	copyTreegraph.opacity = [self.opacity copyWithZone: zone];
	copyTreegraph.animationLimit = [self.animationLimit copyWithZone: zone];
	copyTreegraph.layoutStartingDirection = [self.layoutStartingDirection copyWithZone: zone];
	copyTreegraph.interactByLeaf = [self.interactByLeaf copyWithZone: zone];
	copyTreegraph.alternateStartingDirection = [self.alternateStartingDirection copyWithZone: zone];
	copyTreegraph.layoutAlgorithm = [self.layoutAlgorithm copyWithZone: zone];
	copyTreegraph.levelIsConstant = [self.levelIsConstant copyWithZone: zone];
	copyTreegraph.showInLegend = [self.showInLegend copyWithZone: zone];
	copyTreegraph.jitter = [self.jitter copyWithZone: zone];
	copyTreegraph.cluster = [self.cluster copyWithZone: zone];
	copyTreegraph.lineWidth = [self.lineWidth copyWithZone: zone];
	copyTreegraph.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyTreegraph.linecap = [self.linecap copyWithZone: zone];
	copyTreegraph.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyTreegraph.colorIndex = [self.colorIndex copyWithZone: zone];
	copyTreegraph.clip = [self.clip copyWithZone: zone];
	copyTreegraph.negativeColor = [self.negativeColor copyWithZone: zone];
	copyTreegraph.color = [self.color copyWithZone: zone];
	copyTreegraph.point = [self.point copyWithZone: zone];
	copyTreegraph.label = [self.label copyWithZone: zone];
	copyTreegraph.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyTreegraph.cursor = [self.cursor copyWithZone: zone];
	copyTreegraph.dashStyle = [self.dashStyle copyWithZone: zone];
	copyTreegraph.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyTreegraph.custom = [self.custom copyWithZone: zone];
	copyTreegraph.onPoint = [self.onPoint copyWithZone: zone];
	copyTreegraph.animation = [self.animation copyWithZone: zone];
	copyTreegraph.threshold = [self.threshold copyWithZone: zone];
	copyTreegraph.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyTreegraph.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyTreegraph.definition = [self.definition copyWithZone: zone];
	copyTreegraph.keys = [self.keys copyWithZone: zone];
	copyTreegraph.selected = [self.selected copyWithZone: zone];
	copyTreegraph.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyTreegraph.accessibility = [self.accessibility copyWithZone: zone];
	copyTreegraph.shadow = [self.shadow copyWithZone: zone];
	copyTreegraph.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyTreegraph.crisp = [self.crisp copyWithZone: zone];
	copyTreegraph.visible = [self.visible copyWithZone: zone];
	copyTreegraph.linkedTo = [self.linkedTo copyWithZone: zone];
	copyTreegraph.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copyTreegraph.className = [self.className copyWithZone: zone];
	copyTreegraph.colorKey = [self.colorKey copyWithZone: zone];
	copyTreegraph.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyTreegraph.pointInterval = [self.pointInterval copyWithZone: zone];
	copyTreegraph.softThreshold = [self.softThreshold copyWithZone: zone];
	copyTreegraph.dragDrop = [self.dragDrop copyWithZone: zone];
	copyTreegraph.dataSorting = [self.dataSorting copyWithZone: zone];
	copyTreegraph.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyTreegraph.connectNulls = [self.connectNulls copyWithZone: zone];
	copyTreegraph.stacking = [self.stacking copyWithZone: zone];
	copyTreegraph.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyTreegraph.boostBlending = [self.boostBlending copyWithZone: zone];
	copyTreegraph.step = [self.step copyWithZone: zone];
	copyTreegraph.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyTreegraph.colorAxis = [self.colorAxis copyWithZone: zone];
	copyTreegraph.zones = [self.zones copyWithZone: zone];
	copyTreegraph.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyTreegraph.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyTreegraph.pointStart = [self.pointStart copyWithZone: zone];
	copyTreegraph.connectEnds = [self.connectEnds copyWithZone: zone];
	copyTreegraph.boostThreshold = [self.boostThreshold copyWithZone: zone];
	return copyTreegraph;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.link) {
		params[@"link"] = [self.link getParams];
	}
	if (self.levels) {
		params[@"levels"] = [self.levels getParams];
	}
	if (self.collapseButton) {
		params[@"collapseButton"] = [self.collapseButton getParams];
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.sortIndex) {
		params[@"sortIndex"] = self.sortIndex;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.breadcrumbs) {
		params[@"breadcrumbs"] = [self.breadcrumbs getParams];
	}
	if (self.allowTraversingTree) {
		params[@"allowTraversingTree"] = self.allowTraversingTree;
	}
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
	}
	if (self.interactByLeaf) {
		params[@"interactByLeaf"] = self.interactByLeaf;
	}
	if (self.alternateStartingDirection) {
		params[@"alternateStartingDirection"] = self.alternateStartingDirection;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.levelIsConstant) {
		params[@"levelIsConstant"] = self.levelIsConstant;
	}
	if (self.jitter) {
		params[@"jitter"] = [self.jitter getParams];
	}
	if (self.cluster) {
		params[@"cluster"] = [self.cluster getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setLink:(HILink *)link {
	HILink *oldValue = _link;
	_link = link;
	[self updateHIObject:oldValue newValue:link propertyName:@"link"];
}

-(void)setLevels:(HILevels *)levels {
	HILevels *oldValue = _levels;
	_levels = levels;
	[self updateHIObject:oldValue newValue:levels propertyName:@"levels"];
}

-(void)setCollapseButton:(HICollapseButton *)collapseButton {
	HICollapseButton *oldValue = _collapseButton;
	_collapseButton = collapseButton;
	[self updateHIObject:oldValue newValue:collapseButton propertyName:@"collapseButton"];
}

-(void)setReversed:(NSNumber *)reversed {
	NSNumber *oldValue = _reversed;
	_reversed = reversed;
	[self updateNSObject:oldValue newValue:reversed propertyName:@"reversed"];
}

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	NSNumber *oldValue = _ignoreHiddenPoint;
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:oldValue newValue:ignoreHiddenPoint propertyName:@"ignoreHiddenPoint"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setSortIndex:(NSNumber *)sortIndex {
	NSNumber *oldValue = _sortIndex;
	_sortIndex = sortIndex;
	[self updateNSObject:oldValue newValue:sortIndex propertyName:@"sortIndex"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setBreadcrumbs:(HIBreadcrumbs *)breadcrumbs {
	HIBreadcrumbs *oldValue = _breadcrumbs;
	_breadcrumbs = breadcrumbs;
	[self updateHIObject:oldValue newValue:breadcrumbs propertyName:@"breadcrumbs"];
}

-(void)setAllowTraversingTree:(NSNumber *)allowTraversingTree {
	NSNumber *oldValue = _allowTraversingTree;
	_allowTraversingTree = allowTraversingTree;
	[self updateNSObject:oldValue newValue:allowTraversingTree propertyName:@"allowTraversingTree"];
}

-(void)setLayoutStartingDirection:(NSString *)layoutStartingDirection {
	NSString *oldValue = _layoutStartingDirection;
	_layoutStartingDirection = layoutStartingDirection;
	[self updateNSObject:oldValue newValue:layoutStartingDirection propertyName:@"layoutStartingDirection"];
}

-(void)setInteractByLeaf:(NSNumber *)interactByLeaf {
	NSNumber *oldValue = _interactByLeaf;
	_interactByLeaf = interactByLeaf;
	[self updateNSObject:oldValue newValue:interactByLeaf propertyName:@"interactByLeaf"];
}

-(void)setAlternateStartingDirection:(NSNumber *)alternateStartingDirection {
	NSNumber *oldValue = _alternateStartingDirection;
	_alternateStartingDirection = alternateStartingDirection;
	[self updateNSObject:oldValue newValue:alternateStartingDirection propertyName:@"alternateStartingDirection"];
}

-(void)setLayoutAlgorithm:(NSString *)layoutAlgorithm {
	NSString *oldValue = _layoutAlgorithm;
	_layoutAlgorithm = layoutAlgorithm;
	[self updateNSObject:oldValue newValue:layoutAlgorithm propertyName:@"layoutAlgorithm"];
}

-(void)setLevelIsConstant:(NSNumber *)levelIsConstant {
	NSNumber *oldValue = _levelIsConstant;
	_levelIsConstant = levelIsConstant;
	[self updateNSObject:oldValue newValue:levelIsConstant propertyName:@"levelIsConstant"];
}

-(void)setJitter:(HIJitter *)jitter {
	HIJitter *oldValue = _jitter;
	_jitter = jitter;
	[self updateHIObject:oldValue newValue:jitter propertyName:@"jitter"];
}

-(void)setCluster:(HICluster *)cluster {
	HICluster *oldValue = _cluster;
	_cluster = cluster;
	[self updateHIObject:oldValue newValue:cluster propertyName:@"cluster"];
}

@end