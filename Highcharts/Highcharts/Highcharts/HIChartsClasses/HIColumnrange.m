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
	copyColumnrange.dataLabels = [self.dataLabels copyWithZone: zone];
	copyColumnrange.pointPadding = [self.pointPadding copyWithZone: zone];
	copyColumnrange.borderRadius = [self.borderRadius copyWithZone: zone];
	copyColumnrange.minPointLength = [self.minPointLength copyWithZone: zone];
	copyColumnrange.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyColumnrange.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyColumnrange.colors = [self.colors copyWithZone: zone];
	copyColumnrange.borderColor = [self.borderColor copyWithZone: zone];
	copyColumnrange.edgeColor = [self.edgeColor copyWithZone: zone];
	copyColumnrange.tooltip = [self.tooltip copyWithZone: zone];
	copyColumnrange.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyColumnrange.pointWidth = [self.pointWidth copyWithZone: zone];
	copyColumnrange.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyColumnrange.groupPadding = [self.groupPadding copyWithZone: zone];
	copyColumnrange.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyColumnrange.crisp = [self.crisp copyWithZone: zone];
	copyColumnrange.depth = [self.depth copyWithZone: zone];
	copyColumnrange.borderWidth = [self.borderWidth copyWithZone: zone];
	copyColumnrange.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyColumnrange.grouping = [self.grouping copyWithZone: zone];
	copyColumnrange.point = [self.point copyWithZone: zone];
	copyColumnrange.selected = [self.selected copyWithZone: zone];
	copyColumnrange.colorIndex = [self.colorIndex copyWithZone: zone];
	copyColumnrange.clip = [self.clip copyWithZone: zone];
	copyColumnrange.color = [self.color copyWithZone: zone];
	copyColumnrange.pointInterval = [self.pointInterval copyWithZone: zone];
	copyColumnrange.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyColumnrange.className = [self.className copyWithZone: zone];
	copyColumnrange.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyColumnrange.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyColumnrange.label = [self.label copyWithZone: zone];
	copyColumnrange.animation = [self.animation copyWithZone: zone];
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
	copyColumnrange.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyColumnrange.zones = [self.zones copyWithZone: zone];
	copyColumnrange.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyColumnrange.visible = [self.visible copyWithZone: zone];
	copyColumnrange.linkedTo = [self.linkedTo copyWithZone: zone];
	copyColumnrange.cursor = [self.cursor copyWithZone: zone];
	copyColumnrange.pointStart = [self.pointStart copyWithZone: zone];
	copyColumnrange.boostThreshold = [self.boostThreshold copyWithZone: zone];
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
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
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
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
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
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
	return params;
}

# pragma mark - Setters

-(void)setPointRange:(id)pointRange {
	_pointRange = pointRange;
	[self updateNSObject:@"pointRange"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	_minPointLength = minPointLength;
	[self updateNSObject:@"minPointLength"];
}

-(void)setGroupZPadding:(NSNumber *)groupZPadding {
	_groupZPadding = groupZPadding;
	[self updateNSObject:@"groupZPadding"];
}

-(void)setColors:(NSArray<HIColor *> *)colors {
	NSArray<HIColor *> *oldValue = _colors;
	_colors = colors;
	[self updateArrayObject:oldValue newValue:colors propertyName:@"colors"];
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

-(void)setGrouping:(NSNumber *)grouping {
	_grouping = grouping;
	[self updateNSObject:@"grouping"];
}

@end