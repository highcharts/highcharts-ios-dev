#import "HIChartsJSONSerializableSubclass.h"
#import "HIColumnrange.h"

@implementation HIColumnrange

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"columnrange";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIColumnrange *copyColumnrange = [[HIColumnrange allocWithZone: zone] init];
	copyColumnrange.states = [self.states copyWithZone: zone];
	copyColumnrange.pointRange = [self.pointRange copyWithZone: zone];
	copyColumnrange.dragDrop = [self.dragDrop copyWithZone: zone];
	copyColumnrange.dataLabels = [self.dataLabels copyWithZone: zone];
	copyColumnrange.borderRadius = [self.borderRadius copyWithZone: zone];
	copyColumnrange.minPointLength = [self.minPointLength copyWithZone: zone];
	copyColumnrange.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyColumnrange.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyColumnrange.colors = [self.colors copyWithZone: zone];
	copyColumnrange.borderColor = [self.borderColor copyWithZone: zone];
	copyColumnrange.edgeColor = [self.edgeColor copyWithZone: zone];
	copyColumnrange.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyColumnrange.tooltip = [self.tooltip copyWithZone: zone];
	copyColumnrange.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyColumnrange.pointWidth = [self.pointWidth copyWithZone: zone];
	copyColumnrange.pointPadding = [self.pointPadding copyWithZone: zone];
	copyColumnrange.groupPadding = [self.groupPadding copyWithZone: zone];
	copyColumnrange.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyColumnrange.crisp = [self.crisp copyWithZone: zone];
	copyColumnrange.depth = [self.depth copyWithZone: zone];
	copyColumnrange.borderWidth = [self.borderWidth copyWithZone: zone];
	copyColumnrange.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyColumnrange.grouping = [self.grouping copyWithZone: zone];
	copyColumnrange.selected = [self.selected copyWithZone: zone];
	copyColumnrange.colorIndex = [self.colorIndex copyWithZone: zone];
	copyColumnrange.clip = [self.clip copyWithZone: zone];
	copyColumnrange.point = [self.point copyWithZone: zone];
	copyColumnrange.color = [self.color copyWithZone: zone];
	copyColumnrange.pointInterval = [self.pointInterval copyWithZone: zone];
	copyColumnrange.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyColumnrange.cursor = [self.cursor copyWithZone: zone];
	copyColumnrange.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyColumnrange.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyColumnrange.label = [self.label copyWithZone: zone];
	copyColumnrange.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyColumnrange.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyColumnrange.events = [self.events copyWithZone: zone];
	copyColumnrange.animationLimit = [self.animationLimit copyWithZone: zone];
	copyColumnrange.definition = [self.definition copyWithZone: zone];
	copyColumnrange.keys = [self.keys copyWithZone: zone];
	copyColumnrange.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyColumnrange.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyColumnrange.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyColumnrange.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyColumnrange.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyColumnrange.shadow = [self.shadow copyWithZone: zone];
	copyColumnrange.animation = [self.animation copyWithZone: zone];
	copyColumnrange.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyColumnrange.zones = [self.zones copyWithZone: zone];
	copyColumnrange.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyColumnrange.visible = [self.visible copyWithZone: zone];
	copyColumnrange.linkedTo = [self.linkedTo copyWithZone: zone];
	copyColumnrange.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyColumnrange.className = [self.className copyWithZone: zone];
	copyColumnrange.pointStart = [self.pointStart copyWithZone: zone];
	copyColumnrange.showInLegend = [self.showInLegend copyWithZone: zone];
	copyColumnrange.data = [self.data copyWithZone: zone];
	copyColumnrange.id = [self.id copyWithZone: zone];
	copyColumnrange.index = [self.index copyWithZone: zone];
	copyColumnrange.legendIndex = [self.legendIndex copyWithZone: zone];
	copyColumnrange.name = [self.name copyWithZone: zone];
	copyColumnrange.type = [self.type copyWithZone: zone];
	copyColumnrange.xAxis = [self.xAxis copyWithZone: zone];
	copyColumnrange.yAxis = [self.yAxis copyWithZone: zone];
	copyColumnrange.zIndex = [self.zIndex copyWithZone: zone];
	return copyColumnrange;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
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
	if (self.edgeColor) {
		params[@"edgeColor"] = [self.edgeColor getData];
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
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
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	return params;
}

# pragma mark - Setters

-(void)setPointRange:(id)pointRange {
	id oldValue = _pointRange;
	_pointRange = pointRange;
	[self updateNSObject:oldValue newValue:pointRange propertyName:@"pointRange"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
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

-(void)setEdgeColor:(HIColor *)edgeColor {
	HIColor *oldValue = _edgeColor;
	_edgeColor = edgeColor;
	[self updateHIObject:oldValue newValue:edgeColor propertyName:@"edgeColor"];
}

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
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

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
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

-(void)setGrouping:(NSNumber *)grouping {
	NSNumber *oldValue = _grouping;
	_grouping = grouping;
	[self updateNSObject:oldValue newValue:grouping propertyName:@"grouping"];
}

@end