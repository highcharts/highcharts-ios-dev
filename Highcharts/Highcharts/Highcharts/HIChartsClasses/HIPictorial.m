#import "HIChartsJSONSerializableSubclass.h"
#import "HIPictorial.h"

@implementation HIPictorial

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"pictorial";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPictorial *copyPictorial = [[HIPictorial allocWithZone: zone] init];
	copyPictorial.borderWidth = [self.borderWidth copyWithZone: zone];
	copyPictorial.pointPadding = [self.pointPadding copyWithZone: zone];
	copyPictorial.pointRange = [self.pointRange copyWithZone: zone];
	copyPictorial.minPointLength = [self.minPointLength copyWithZone: zone];
	copyPictorial.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyPictorial.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyPictorial.states = [self.states copyWithZone: zone];
	copyPictorial.colors = [self.colors copyWithZone: zone];
	copyPictorial.dragDrop = [self.dragDrop copyWithZone: zone];
	copyPictorial.threshold = [self.threshold copyWithZone: zone];
	copyPictorial.borderColor = [self.borderColor copyWithZone: zone];
	copyPictorial.edgeColor = [self.edgeColor copyWithZone: zone];
	copyPictorial.tooltip = [self.tooltip copyWithZone: zone];
	copyPictorial.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyPictorial.pointWidth = [self.pointWidth copyWithZone: zone];
	copyPictorial.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyPictorial.groupPadding = [self.groupPadding copyWithZone: zone];
	copyPictorial.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyPictorial.dataLabels = [self.dataLabels copyWithZone: zone];
	copyPictorial.depth = [self.depth copyWithZone: zone];
	copyPictorial.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyPictorial.grouping = [self.grouping copyWithZone: zone];
	copyPictorial.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyPictorial.colorIndex = [self.colorIndex copyWithZone: zone];
	copyPictorial.clip = [self.clip copyWithZone: zone];
	copyPictorial.negativeColor = [self.negativeColor copyWithZone: zone];
	copyPictorial.color = [self.color copyWithZone: zone];
	copyPictorial.pointInterval = [self.pointInterval copyWithZone: zone];
	copyPictorial.softThreshold = [self.softThreshold copyWithZone: zone];
	copyPictorial.point = [self.point copyWithZone: zone];
	copyPictorial.label = [self.label copyWithZone: zone];
	copyPictorial.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyPictorial.cursor = [self.cursor copyWithZone: zone];
	copyPictorial.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyPictorial.inactiveOtherPoints = [self.inactiveOtherPoints copyWithZone: zone];
	copyPictorial.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyPictorial.custom = [self.custom copyWithZone: zone];
	copyPictorial.stacking = [self.stacking copyWithZone: zone];
	copyPictorial.animation = [self.animation copyWithZone: zone];
	copyPictorial.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyPictorial.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyPictorial.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyPictorial.boostBlending = [self.boostBlending copyWithZone: zone];
	copyPictorial.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyPictorial.events = [self.events copyWithZone: zone];
	copyPictorial.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copyPictorial.opacity = [self.opacity copyWithZone: zone];
	copyPictorial.animationLimit = [self.animationLimit copyWithZone: zone];
	copyPictorial.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyPictorial.definition = [self.definition copyWithZone: zone];
	copyPictorial.keys = [self.keys copyWithZone: zone];
	copyPictorial.selected = [self.selected copyWithZone: zone];
	copyPictorial.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyPictorial.accessibility = [self.accessibility copyWithZone: zone];
	copyPictorial.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyPictorial.sonification = [self.sonification copyWithZone: zone];
	copyPictorial.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyPictorial.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyPictorial.zones = [self.zones copyWithZone: zone];
	copyPictorial.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyPictorial.visible = [self.visible copyWithZone: zone];
	copyPictorial.linkedTo = [self.linkedTo copyWithZone: zone];
	copyPictorial.className = [self.className copyWithZone: zone];
	copyPictorial.pointStart = [self.pointStart copyWithZone: zone];
	copyPictorial.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyPictorial.showInLegend = [self.showInLegend copyWithZone: zone];
	copyPictorial.paths = [self.paths copyWithZone: zone];
	copyPictorial.data = [self.data copyWithZone: zone];
	copyPictorial.id = [self.id copyWithZone: zone];
	copyPictorial.index = [self.index copyWithZone: zone];
	copyPictorial.legendIndex = [self.legendIndex copyWithZone: zone];
	copyPictorial.name = [self.name copyWithZone: zone];
	copyPictorial.stack = [self.stack copyWithZone: zone];
	copyPictorial.type = [self.type copyWithZone: zone];
	copyPictorial.xAxis = [self.xAxis copyWithZone: zone];
	copyPictorial.yAxis = [self.yAxis copyWithZone: zone];
	copyPictorial.zIndex = [self.zIndex copyWithZone: zone];
	return copyPictorial;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
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
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
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
	if (self.paths) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.paths) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"paths"] = array;
	}
	return params;
}

# pragma mark - Setters

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
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

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
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

-(void)setPaths:(NSArray <HIPaths *> *)paths {
	NSArray <HIPaths *> *oldValue = _paths;
	_paths = paths;
	[self updateArrayObject:oldValue newValue:paths propertyName:@"paths"];
}

@end