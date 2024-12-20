#import "HIChartsJSONSerializableSubclass.h"
#import "HITreemap.h"

@implementation HITreemap

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"treemap";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HITreemap *copyTreemap = [[HITreemap allocWithZone: zone] init];
	copyTreemap.data = [self.data copyWithZone: zone];
	copyTreemap.id = [self.id copyWithZone: zone];
	copyTreemap.index = [self.index copyWithZone: zone];
	copyTreemap.legendIndex = [self.legendIndex copyWithZone: zone];
	copyTreemap.name = [self.name copyWithZone: zone];
	copyTreemap.type = [self.type copyWithZone: zone];
	copyTreemap.xAxis = [self.xAxis copyWithZone: zone];
	copyTreemap.yAxis = [self.yAxis copyWithZone: zone];
	copyTreemap.zIndex = [self.zIndex copyWithZone: zone];
	copyTreemap.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copyTreemap.borderRadius = [self.borderRadius copyWithZone: zone];
	copyTreemap.traverseToLeaf = [self.traverseToLeaf copyWithZone: zone];
	copyTreemap.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyTreemap.states = [self.states copyWithZone: zone];
	copyTreemap.colors = [self.colors copyWithZone: zone];
	copyTreemap.sortIndex = [self.sortIndex copyWithZone: zone];
	copyTreemap.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyTreemap.breadcrumbs = [self.breadcrumbs copyWithZone: zone];
	copyTreemap.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyTreemap.tooltip = [self.tooltip copyWithZone: zone];
	copyTreemap.allowTraversingTree = [self.allowTraversingTree copyWithZone: zone];
	copyTreemap.events = [self.events copyWithZone: zone];
	copyTreemap.opacity = [self.opacity copyWithZone: zone];
	copyTreemap.animationLimit = [self.animationLimit copyWithZone: zone];
	copyTreemap.layoutStartingDirection = [self.layoutStartingDirection copyWithZone: zone];
	copyTreemap.levels = [self.levels copyWithZone: zone];
	copyTreemap.interactByLeaf = [self.interactByLeaf copyWithZone: zone];
	copyTreemap.alternateStartingDirection = [self.alternateStartingDirection copyWithZone: zone];
	copyTreemap.colorKey = [self.colorKey copyWithZone: zone];
	copyTreemap.layoutAlgorithm = [self.layoutAlgorithm copyWithZone: zone];
	copyTreemap.dataLabels = [self.dataLabels copyWithZone: zone];
	copyTreemap.levelIsConstant = [self.levelIsConstant copyWithZone: zone];
	copyTreemap.showInLegend = [self.showInLegend copyWithZone: zone];
	copyTreemap.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyTreemap.lineWidth = [self.lineWidth copyWithZone: zone];
	copyTreemap.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyTreemap.linecap = [self.linecap copyWithZone: zone];
	copyTreemap.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyTreemap.colorIndex = [self.colorIndex copyWithZone: zone];
	copyTreemap.clip = [self.clip copyWithZone: zone];
	copyTreemap.negativeColor = [self.negativeColor copyWithZone: zone];
	copyTreemap.color = [self.color copyWithZone: zone];
	copyTreemap.pointInterval = [self.pointInterval copyWithZone: zone];
	copyTreemap.softThreshold = [self.softThreshold copyWithZone: zone];
	copyTreemap.point = [self.point copyWithZone: zone];
	copyTreemap.label = [self.label copyWithZone: zone];
	copyTreemap.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyTreemap.cursor = [self.cursor copyWithZone: zone];
	copyTreemap.dashStyle = [self.dashStyle copyWithZone: zone];
	copyTreemap.inactiveOtherPoints = [self.inactiveOtherPoints copyWithZone: zone];
	copyTreemap.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyTreemap.custom = [self.custom copyWithZone: zone];
	copyTreemap.onPoint = [self.onPoint copyWithZone: zone];
	copyTreemap.stacking = [self.stacking copyWithZone: zone];
	copyTreemap.animation = [self.animation copyWithZone: zone];
	copyTreemap.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyTreemap.threshold = [self.threshold copyWithZone: zone];
	copyTreemap.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyTreemap.boostBlending = [self.boostBlending copyWithZone: zone];
	copyTreemap.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copyTreemap.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyTreemap.definition = [self.definition copyWithZone: zone];
	copyTreemap.keys = [self.keys copyWithZone: zone];
	copyTreemap.selected = [self.selected copyWithZone: zone];
	copyTreemap.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyTreemap.accessibility = [self.accessibility copyWithZone: zone];
	copyTreemap.step = [self.step copyWithZone: zone];
	copyTreemap.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyTreemap.sonification = [self.sonification copyWithZone: zone];
	copyTreemap.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyTreemap.colorAxis = [self.colorAxis copyWithZone: zone];
	copyTreemap.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyTreemap.zones = [self.zones copyWithZone: zone];
	copyTreemap.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyTreemap.crisp = [self.crisp copyWithZone: zone];
	copyTreemap.visible = [self.visible copyWithZone: zone];
	copyTreemap.linkedTo = [self.linkedTo copyWithZone: zone];
	copyTreemap.className = [self.className copyWithZone: zone];
	copyTreemap.pointStart = [self.pointStart copyWithZone: zone];
	copyTreemap.boostThreshold = [self.boostThreshold copyWithZone: zone];
	return copyTreemap;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.traverseToLeaf) {
		params[@"traverseToLeaf"] = self.traverseToLeaf;
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
	return params;
}

# pragma mark - Setters

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

-(void)setTraverseToLeaf:(NSNumber *)traverseToLeaf {
	NSNumber *oldValue = _traverseToLeaf;
	_traverseToLeaf = traverseToLeaf;
	[self updateNSObject:oldValue newValue:traverseToLeaf propertyName:@"traverseToLeaf"];
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

-(void)setLevels:(NSArray <HILevels *> *)levels {
	NSArray <HILevels *> *oldValue = _levels;
	_levels = levels;
	[self updateArrayObject:oldValue newValue:levels propertyName:@"levels"];
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

@end