#import "HIChartsJSONSerializableSubclass.h"
#import "HIBar.h"

@implementation HIBar

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"bar";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBar *copyBar = [[HIBar allocWithZone: zone] init];
	copyBar.dataLabels = [self.dataLabels copyWithZone: zone];
	copyBar.pointPadding = [self.pointPadding copyWithZone: zone];
	copyBar.borderRadius = [self.borderRadius copyWithZone: zone];
	copyBar.pointRange = [self.pointRange copyWithZone: zone];
	copyBar.minPointLength = [self.minPointLength copyWithZone: zone];
	copyBar.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyBar.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyBar.states = [self.states copyWithZone: zone];
	copyBar.colors = [self.colors copyWithZone: zone];
	copyBar.softThreshold = [self.softThreshold copyWithZone: zone];
	copyBar.threshold = [self.threshold copyWithZone: zone];
	copyBar.borderColor = [self.borderColor copyWithZone: zone];
	copyBar.edgeColor = [self.edgeColor copyWithZone: zone];
	copyBar.tooltip = [self.tooltip copyWithZone: zone];
	copyBar.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyBar.pointWidth = [self.pointWidth copyWithZone: zone];
	copyBar.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyBar.groupPadding = [self.groupPadding copyWithZone: zone];
	copyBar.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyBar.crisp = [self.crisp copyWithZone: zone];
	copyBar.depth = [self.depth copyWithZone: zone];
	copyBar.borderWidth = [self.borderWidth copyWithZone: zone];
	copyBar.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyBar.grouping = [self.grouping copyWithZone: zone];
	copyBar.point = [self.point copyWithZone: zone];
	copyBar.selected = [self.selected copyWithZone: zone];
	copyBar.colorIndex = [self.colorIndex copyWithZone: zone];
	copyBar.clip = [self.clip copyWithZone: zone];
	copyBar.negativeColor = [self.negativeColor copyWithZone: zone];
	copyBar.color = [self.color copyWithZone: zone];
	copyBar.pointInterval = [self.pointInterval copyWithZone: zone];
	copyBar.dragDrop = [self.dragDrop copyWithZone: zone];
	copyBar.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyBar.className = [self.className copyWithZone: zone];
	copyBar.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyBar.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyBar.label = [self.label copyWithZone: zone];
	copyBar.stacking = [self.stacking copyWithZone: zone];
	copyBar.animation = [self.animation copyWithZone: zone];
	copyBar.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyBar.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyBar.boostBlending = [self.boostBlending copyWithZone: zone];
	copyBar.events = [self.events copyWithZone: zone];
	copyBar.animationLimit = [self.animationLimit copyWithZone: zone];
	copyBar.definition = [self.definition copyWithZone: zone];
	copyBar.keys = [self.keys copyWithZone: zone];
	copyBar.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyBar.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyBar.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyBar.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyBar.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyBar.shadow = [self.shadow copyWithZone: zone];
	copyBar.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyBar.zones = [self.zones copyWithZone: zone];
	copyBar.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyBar.visible = [self.visible copyWithZone: zone];
	copyBar.linkedTo = [self.linkedTo copyWithZone: zone];
	copyBar.cursor = [self.cursor copyWithZone: zone];
	copyBar.pointStart = [self.pointStart copyWithZone: zone];
	copyBar.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyBar.showInLegend = [self.showInLegend copyWithZone: zone];
	copyBar.data = [self.data copyWithZone: zone];
	copyBar.id = [self.id copyWithZone: zone];
	copyBar.index = [self.index copyWithZone: zone];
	copyBar.legendIndex = [self.legendIndex copyWithZone: zone];
	copyBar.name = [self.name copyWithZone: zone];
	copyBar.stack = [self.stack copyWithZone: zone];
	copyBar.type = [self.type copyWithZone: zone];
	copyBar.xAxis = [self.xAxis copyWithZone: zone];
	copyBar.yAxis = [self.yAxis copyWithZone: zone];
	copyBar.zIndex = [self.zIndex copyWithZone: zone];
	return copyBar;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
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
		for (id obj in self.colors) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
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
	if (self.crisp) {
		params[@"crisp"] = self.crisp;
	}
	if (self.depth) {
		params[@"depth"] = self.depth;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	return params;
}

# pragma mark - Setters

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
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

-(void)setColors:(NSArray<NSString *> *)colors {
	NSArray<NSString *> *oldValue = _colors;
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

-(void)setCrisp:(NSNumber *)crisp {
	NSNumber *oldValue = _crisp;
	_crisp = crisp;
	[self updateNSObject:oldValue newValue:crisp propertyName:@"crisp"];
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

-(void)setGrouping:(NSNumber *)grouping {
	NSNumber *oldValue = _grouping;
	_grouping = grouping;
	[self updateNSObject:oldValue newValue:grouping propertyName:@"grouping"];
}

@end