#import "HIChartsJSONSerializableSubclass.h"
#import "HISunburst.h"

@implementation HISunburst

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"sunburst";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HISunburst *copySunburst = [[HISunburst allocWithZone: zone] init];
	copySunburst.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copySunburst.rootId = [self.rootId copyWithZone: zone];
	copySunburst.levelSize = [self.levelSize copyWithZone: zone];
	copySunburst.center = [self.center copyWithZone: zone];
	copySunburst.breadcrumbs = [self.breadcrumbs copyWithZone: zone];
	copySunburst.slicedOffset = [self.slicedOffset copyWithZone: zone];
	copySunburst.levels = [self.levels copyWithZone: zone];
	copySunburst.dataLabels = [self.dataLabels copyWithZone: zone];
	copySunburst.levelIsConstant = [self.levelIsConstant copyWithZone: zone];
	copySunburst.allowTraversingTree = [self.allowTraversingTree copyWithZone: zone];
	copySunburst.ignoreHiddenPoint = [self.ignoreHiddenPoint copyWithZone: zone];
	copySunburst.clip = [self.clip copyWithZone: zone];
	copySunburst.point = [self.point copyWithZone: zone];
	copySunburst.color = [self.color copyWithZone: zone];
	copySunburst.states = [self.states copyWithZone: zone];
	copySunburst.colors = [self.colors copyWithZone: zone];
	copySunburst.size = [self.size copyWithZone: zone];
	copySunburst.borderColor = [self.borderColor copyWithZone: zone];
	copySunburst.tooltip = [self.tooltip copyWithZone: zone];
	copySunburst.thickness = [self.thickness copyWithZone: zone];
	copySunburst.minSize = [self.minSize copyWithZone: zone];
	copySunburst.fillColor = [self.fillColor copyWithZone: zone];
	copySunburst.startAngle = [self.startAngle copyWithZone: zone];
	copySunburst.events = [self.events copyWithZone: zone];
	copySunburst.endAngle = [self.endAngle copyWithZone: zone];
	copySunburst.innerSize = [self.innerSize copyWithZone: zone];
	copySunburst.depth = [self.depth copyWithZone: zone];
	copySunburst.borderWidth = [self.borderWidth copyWithZone: zone];
	copySunburst.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copySunburst.showInLegend = [self.showInLegend copyWithZone: zone];
	copySunburst.linecap = [self.linecap copyWithZone: zone];
	copySunburst.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copySunburst.colorIndex = [self.colorIndex copyWithZone: zone];
	copySunburst.negativeColor = [self.negativeColor copyWithZone: zone];
	copySunburst.pointInterval = [self.pointInterval copyWithZone: zone];
	copySunburst.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copySunburst.colorKey = [self.colorKey copyWithZone: zone];
	copySunburst.softThreshold = [self.softThreshold copyWithZone: zone];
	copySunburst.dragDrop = [self.dragDrop copyWithZone: zone];
	copySunburst.dataSorting = [self.dataSorting copyWithZone: zone];
	copySunburst.marker = [self.marker copyWithZone: zone];
	copySunburst.label = [self.label copyWithZone: zone];
	copySunburst.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copySunburst.cursor = [self.cursor copyWithZone: zone];
	copySunburst.dashStyle = [self.dashStyle copyWithZone: zone];
	copySunburst.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copySunburst.connectNulls = [self.connectNulls copyWithZone: zone];
	copySunburst.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copySunburst.custom = [self.custom copyWithZone: zone];
	copySunburst.onPoint = [self.onPoint copyWithZone: zone];
	copySunburst.stacking = [self.stacking copyWithZone: zone];
	copySunburst.animation = [self.animation copyWithZone: zone];
	copySunburst.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copySunburst.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copySunburst.threshold = [self.threshold copyWithZone: zone];
	copySunburst.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copySunburst.boostBlending = [self.boostBlending copyWithZone: zone];
	copySunburst.opacity = [self.opacity copyWithZone: zone];
	copySunburst.animationLimit = [self.animationLimit copyWithZone: zone];
	copySunburst.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copySunburst.definition = [self.definition copyWithZone: zone];
	copySunburst.keys = [self.keys copyWithZone: zone];
	copySunburst.selected = [self.selected copyWithZone: zone];
	copySunburst.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copySunburst.accessibility = [self.accessibility copyWithZone: zone];
	copySunburst.step = [self.step copyWithZone: zone];
	copySunburst.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copySunburst.shadow = [self.shadow copyWithZone: zone];
	copySunburst.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copySunburst.colorAxis = [self.colorAxis copyWithZone: zone];
	copySunburst.zones = [self.zones copyWithZone: zone];
	copySunburst.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copySunburst.lineWidth = [self.lineWidth copyWithZone: zone];
	copySunburst.crisp = [self.crisp copyWithZone: zone];
	copySunburst.visible = [self.visible copyWithZone: zone];
	copySunburst.linkedTo = [self.linkedTo copyWithZone: zone];
	copySunburst.dataAsColumns = [self.dataAsColumns copyWithZone: zone];
	copySunburst.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copySunburst.className = [self.className copyWithZone: zone];
	copySunburst.pointStart = [self.pointStart copyWithZone: zone];
	copySunburst.connectEnds = [self.connectEnds copyWithZone: zone];
	copySunburst.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copySunburst.data = [self.data copyWithZone: zone];
	copySunburst.id = [self.id copyWithZone: zone];
	copySunburst.index = [self.index copyWithZone: zone];
	copySunburst.legendIndex = [self.legendIndex copyWithZone: zone];
	copySunburst.name = [self.name copyWithZone: zone];
	copySunburst.stack = [self.stack copyWithZone: zone];
	copySunburst.type = [self.type copyWithZone: zone];
	copySunburst.xAxis = [self.xAxis copyWithZone: zone];
	copySunburst.yAxis = [self.yAxis copyWithZone: zone];
	copySunburst.zIndex = [self.zIndex copyWithZone: zone];
	return copySunburst;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.rootId) {
		params[@"rootId"] = self.rootId;
	}
	if (self.levelSize) {
		params[@"levelSize"] = [self.levelSize getParams];
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
	if (self.breadcrumbs) {
		params[@"breadcrumbs"] = [self.breadcrumbs getParams];
	}
	if (self.slicedOffset) {
		params[@"slicedOffset"] = self.slicedOffset;
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
	if (self.levelIsConstant) {
		params[@"levelIsConstant"] = self.levelIsConstant;
	}
	if (self.allowTraversingTree) {
		params[@"allowTraversingTree"] = self.allowTraversingTree;
	}
	if (self.ignoreHiddenPoint) {
		params[@"ignoreHiddenPoint"] = self.ignoreHiddenPoint;
	}
	if (self.colors) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.size) {
		params[@"size"] = self.size;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.thickness) {
		params[@"thickness"] = self.thickness;
	}
	if (self.minSize) {
		params[@"minSize"] = self.minSize;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.startAngle) {
		params[@"startAngle"] = self.startAngle;
	}
	if (self.endAngle) {
		params[@"endAngle"] = self.endAngle;
	}
	if (self.innerSize) {
		params[@"innerSize"] = self.innerSize;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setRootId:(NSString *)rootId {
	NSString *oldValue = _rootId;
	_rootId = rootId;
	[self updateNSObject:oldValue newValue:rootId propertyName:@"rootId"];
}

-(void)setLevelSize:(HILevelSize *)levelSize {
	HILevelSize *oldValue = _levelSize;
	_levelSize = levelSize;
	[self updateHIObject:oldValue newValue:levelSize propertyName:@"levelSize"];
}

-(void)setCenter:(NSArray *)center {
	NSArray *oldValue = _center;
	_center = center;
	[self updateArrayObject:oldValue newValue:center propertyName:@"center"];
}

-(void)setBreadcrumbs:(HIBreadcrumbs *)breadcrumbs {
	HIBreadcrumbs *oldValue = _breadcrumbs;
	_breadcrumbs = breadcrumbs;
	[self updateHIObject:oldValue newValue:breadcrumbs propertyName:@"breadcrumbs"];
}

-(void)setSlicedOffset:(NSNumber *)slicedOffset {
	NSNumber *oldValue = _slicedOffset;
	_slicedOffset = slicedOffset;
	[self updateNSObject:oldValue newValue:slicedOffset propertyName:@"slicedOffset"];
}

-(void)setLevels:(NSArray <HILevels *> *)levels {
	NSArray <HILevels *> *oldValue = _levels;
	_levels = levels;
	[self updateArrayObject:oldValue newValue:levels propertyName:@"levels"];
}

-(void)setLevelIsConstant:(NSNumber *)levelIsConstant {
	NSNumber *oldValue = _levelIsConstant;
	_levelIsConstant = levelIsConstant;
	[self updateNSObject:oldValue newValue:levelIsConstant propertyName:@"levelIsConstant"];
}

-(void)setAllowTraversingTree:(NSNumber *)allowTraversingTree {
	NSNumber *oldValue = _allowTraversingTree;
	_allowTraversingTree = allowTraversingTree;
	[self updateNSObject:oldValue newValue:allowTraversingTree propertyName:@"allowTraversingTree"];
}

-(void)setIgnoreHiddenPoint:(NSNumber *)ignoreHiddenPoint {
	NSNumber *oldValue = _ignoreHiddenPoint;
	_ignoreHiddenPoint = ignoreHiddenPoint;
	[self updateNSObject:oldValue newValue:ignoreHiddenPoint propertyName:@"ignoreHiddenPoint"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setSize:(id)size {
	id oldValue = _size;
	_size = size;
	[self updateNSObject:oldValue newValue:size propertyName:@"size"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setThickness:(NSNumber *)thickness {
	NSNumber *oldValue = _thickness;
	_thickness = thickness;
	[self updateNSObject:oldValue newValue:thickness propertyName:@"thickness"];
}

-(void)setMinSize:(id)minSize {
	id oldValue = _minSize;
	_minSize = minSize;
	[self updateNSObject:oldValue newValue:minSize propertyName:@"minSize"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setStartAngle:(NSNumber *)startAngle {
	NSNumber *oldValue = _startAngle;
	_startAngle = startAngle;
	[self updateNSObject:oldValue newValue:startAngle propertyName:@"startAngle"];
}

-(void)setEndAngle:(NSNumber *)endAngle {
	NSNumber *oldValue = _endAngle;
	_endAngle = endAngle;
	[self updateNSObject:oldValue newValue:endAngle propertyName:@"endAngle"];
}

-(void)setInnerSize:(id)innerSize {
	id oldValue = _innerSize;
	_innerSize = innerSize;
	[self updateNSObject:oldValue newValue:innerSize propertyName:@"innerSize"];
}

-(void)setDepth:(NSNumber *)depth {
	NSNumber *oldValue = _depth;
	_depth = depth;
	[self updateNSObject:oldValue newValue:depth propertyName:@"depth"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

@end