#import "HIChartsJSONSerializableSubclass.h"
#import "HICylinder.h"

@implementation HICylinder

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"cylinder";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HICylinder *copyCylinder = [[HICylinder allocWithZone: zone] init];
	copyCylinder.pointPadding = [self.pointPadding copyWithZone: zone];
	copyCylinder.borderRadius = [self.borderRadius copyWithZone: zone];
	copyCylinder.pointRange = [self.pointRange copyWithZone: zone];
	copyCylinder.minPointLength = [self.minPointLength copyWithZone: zone];
	copyCylinder.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyCylinder.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyCylinder.states = [self.states copyWithZone: zone];
	copyCylinder.colors = [self.colors copyWithZone: zone];
	copyCylinder.softThreshold = [self.softThreshold copyWithZone: zone];
	copyCylinder.threshold = [self.threshold copyWithZone: zone];
	copyCylinder.borderColor = [self.borderColor copyWithZone: zone];
	copyCylinder.edgeColor = [self.edgeColor copyWithZone: zone];
	copyCylinder.tooltip = [self.tooltip copyWithZone: zone];
	copyCylinder.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyCylinder.pointWidth = [self.pointWidth copyWithZone: zone];
	copyCylinder.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyCylinder.groupPadding = [self.groupPadding copyWithZone: zone];
	copyCylinder.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyCylinder.crisp = [self.crisp copyWithZone: zone];
	copyCylinder.dataLabels = [self.dataLabels copyWithZone: zone];
	copyCylinder.depth = [self.depth copyWithZone: zone];
	copyCylinder.borderWidth = [self.borderWidth copyWithZone: zone];
	copyCylinder.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyCylinder.grouping = [self.grouping copyWithZone: zone];
	copyCylinder.point = [self.point copyWithZone: zone];
	copyCylinder.selected = [self.selected copyWithZone: zone];
	copyCylinder.colorIndex = [self.colorIndex copyWithZone: zone];
	copyCylinder.clip = [self.clip copyWithZone: zone];
	copyCylinder.negativeColor = [self.negativeColor copyWithZone: zone];
	copyCylinder.color = [self.color copyWithZone: zone];
	copyCylinder.pointInterval = [self.pointInterval copyWithZone: zone];
	copyCylinder.dragDrop = [self.dragDrop copyWithZone: zone];
	copyCylinder.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyCylinder.className = [self.className copyWithZone: zone];
	copyCylinder.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyCylinder.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyCylinder.label = [self.label copyWithZone: zone];
	copyCylinder.stacking = [self.stacking copyWithZone: zone];
	copyCylinder.animation = [self.animation copyWithZone: zone];
	copyCylinder.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyCylinder.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyCylinder.events = [self.events copyWithZone: zone];
	copyCylinder.animationLimit = [self.animationLimit copyWithZone: zone];
	copyCylinder.definition = [self.definition copyWithZone: zone];
	copyCylinder.keys = [self.keys copyWithZone: zone];
	copyCylinder.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyCylinder.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyCylinder.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyCylinder.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyCylinder.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyCylinder.shadow = [self.shadow copyWithZone: zone];
	copyCylinder.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyCylinder.zones = [self.zones copyWithZone: zone];
	copyCylinder.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyCylinder.visible = [self.visible copyWithZone: zone];
	copyCylinder.linkedTo = [self.linkedTo copyWithZone: zone];
	copyCylinder.cursor = [self.cursor copyWithZone: zone];
	copyCylinder.pointStart = [self.pointStart copyWithZone: zone];
	copyCylinder.showInLegend = [self.showInLegend copyWithZone: zone];
	copyCylinder.data = [self.data copyWithZone: zone];
	copyCylinder.id = [self.id copyWithZone: zone];
	copyCylinder.index = [self.index copyWithZone: zone];
	copyCylinder.legendIndex = [self.legendIndex copyWithZone: zone];
	copyCylinder.name = [self.name copyWithZone: zone];
	copyCylinder.stack = [self.stack copyWithZone: zone];
	copyCylinder.type = [self.type copyWithZone: zone];
	copyCylinder.xAxis = [self.xAxis copyWithZone: zone];
	copyCylinder.yAxis = [self.yAxis copyWithZone: zone];
	copyCylinder.zIndex = [self.zIndex copyWithZone: zone];
	return copyCylinder;
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