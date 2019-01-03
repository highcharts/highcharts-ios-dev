#import "HIChartsJSONSerializableSubclass.h"
#import "HIColumn.h"

@implementation HIColumn

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"column";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIColumn *copyColumn = [[HIColumn allocWithZone: zone] init];
	copyColumn.pointPadding = [self.pointPadding copyWithZone: zone];
	copyColumn.borderRadius = [self.borderRadius copyWithZone: zone];
	copyColumn.pointRange = [self.pointRange copyWithZone: zone];
	copyColumn.minPointLength = [self.minPointLength copyWithZone: zone];
	copyColumn.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyColumn.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyColumn.states = [self.states copyWithZone: zone];
	copyColumn.colors = [self.colors copyWithZone: zone];
	copyColumn.softThreshold = [self.softThreshold copyWithZone: zone];
	copyColumn.threshold = [self.threshold copyWithZone: zone];
	copyColumn.borderColor = [self.borderColor copyWithZone: zone];
	copyColumn.edgeColor = [self.edgeColor copyWithZone: zone];
	copyColumn.tooltip = [self.tooltip copyWithZone: zone];
	copyColumn.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyColumn.pointWidth = [self.pointWidth copyWithZone: zone];
	copyColumn.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyColumn.groupPadding = [self.groupPadding copyWithZone: zone];
	copyColumn.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyColumn.crisp = [self.crisp copyWithZone: zone];
	copyColumn.dataLabels = [self.dataLabels copyWithZone: zone];
	copyColumn.depth = [self.depth copyWithZone: zone];
	copyColumn.borderWidth = [self.borderWidth copyWithZone: zone];
	copyColumn.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyColumn.grouping = [self.grouping copyWithZone: zone];
	copyColumn.point = [self.point copyWithZone: zone];
	copyColumn.selected = [self.selected copyWithZone: zone];
	copyColumn.colorIndex = [self.colorIndex copyWithZone: zone];
	copyColumn.clip = [self.clip copyWithZone: zone];
	copyColumn.negativeColor = [self.negativeColor copyWithZone: zone];
	copyColumn.color = [self.color copyWithZone: zone];
	copyColumn.pointInterval = [self.pointInterval copyWithZone: zone];
	copyColumn.dragDrop = [self.dragDrop copyWithZone: zone];
	copyColumn.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyColumn.className = [self.className copyWithZone: zone];
	copyColumn.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyColumn.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyColumn.label = [self.label copyWithZone: zone];
	copyColumn.stacking = [self.stacking copyWithZone: zone];
	copyColumn.animation = [self.animation copyWithZone: zone];
	copyColumn.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyColumn.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyColumn.events = [self.events copyWithZone: zone];
	copyColumn.animationLimit = [self.animationLimit copyWithZone: zone];
	copyColumn.definition = [self.definition copyWithZone: zone];
	copyColumn.keys = [self.keys copyWithZone: zone];
	copyColumn.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyColumn.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyColumn.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyColumn.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyColumn.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyColumn.shadow = [self.shadow copyWithZone: zone];
	copyColumn.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyColumn.zones = [self.zones copyWithZone: zone];
	copyColumn.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyColumn.visible = [self.visible copyWithZone: zone];
	copyColumn.linkedTo = [self.linkedTo copyWithZone: zone];
	copyColumn.cursor = [self.cursor copyWithZone: zone];
	copyColumn.pointStart = [self.pointStart copyWithZone: zone];
	copyColumn.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyColumn.showInLegend = [self.showInLegend copyWithZone: zone];
	copyColumn.data = [self.data copyWithZone: zone];
	copyColumn.id = [self.id copyWithZone: zone];
	copyColumn.index = [self.index copyWithZone: zone];
	copyColumn.legendIndex = [self.legendIndex copyWithZone: zone];
	copyColumn.name = [self.name copyWithZone: zone];
	copyColumn.stack = [self.stack copyWithZone: zone];
	copyColumn.type = [self.type copyWithZone: zone];
	copyColumn.xAxis = [self.xAxis copyWithZone: zone];
	copyColumn.yAxis = [self.yAxis copyWithZone: zone];
	copyColumn.zIndex = [self.zIndex copyWithZone: zone];
	return copyColumn;
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
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setPointRange:(NSNumber *)pointRange {
	_pointRange = pointRange;
	[self updateNSObject:@"pointRange"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	_minPointLength = minPointLength;
	[self updateNSObject:@"minPointLength"];
}

-(void)setGroupZPadding:(NSNumber *)groupZPadding {
	_groupZPadding = groupZPadding;
	[self updateNSObject:@"groupZPadding"];
}

-(void)setColors:(NSArray<NSString *> *)colors {
	NSArray<NSString *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setEdgeColor:(HIColor *)edgeColor {
	HIColor *oldValue = _edgeColor;
	if(self.edgeColor) {
		[self removeObserver:self forKeyPath:@"edgeColor.isUpdated"];
	}
	_edgeColor = edgeColor;
	[self updateHIObject:oldValue newValue:edgeColor propertyName:@"edgeColor"];
}

-(void)setMaxPointWidth:(NSNumber *)maxPointWidth {
	_maxPointWidth = maxPointWidth;
	[self updateNSObject:@"maxPointWidth"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	_pointWidth = pointWidth;
	[self updateNSObject:@"pointWidth"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setGroupPadding:(NSNumber *)groupPadding {
	_groupPadding = groupPadding;
	[self updateNSObject:@"groupPadding"];
}

-(void)setEdgeWidth:(NSNumber *)edgeWidth {
	_edgeWidth = edgeWidth;
	[self updateNSObject:@"edgeWidth"];
}

-(void)setCrisp:(NSNumber *)crisp {
	_crisp = crisp;
	[self updateNSObject:@"crisp"];
}

-(void)setDepth:(NSNumber *)depth {
	_depth = depth;
	[self updateNSObject:@"depth"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setGrouping:(NSNumber *)grouping {
	_grouping = grouping;
	[self updateNSObject:@"grouping"];
}

@end