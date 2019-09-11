#import "HIChartsJSONSerializableSubclass.h"
#import "HIVariwide.h"

@implementation HIVariwide

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"variwide";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIVariwide *copyVariwide = [[HIVariwide allocWithZone: zone] init];
	copyVariwide.pointPadding = [self.pointPadding copyWithZone: zone];
	copyVariwide.groupPadding = [self.groupPadding copyWithZone: zone];
	copyVariwide.borderRadius = [self.borderRadius copyWithZone: zone];
	copyVariwide.pointRange = [self.pointRange copyWithZone: zone];
	copyVariwide.minPointLength = [self.minPointLength copyWithZone: zone];
	copyVariwide.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyVariwide.states = [self.states copyWithZone: zone];
	copyVariwide.colors = [self.colors copyWithZone: zone];
	copyVariwide.softThreshold = [self.softThreshold copyWithZone: zone];
	copyVariwide.threshold = [self.threshold copyWithZone: zone];
	copyVariwide.borderColor = [self.borderColor copyWithZone: zone];
	copyVariwide.tooltip = [self.tooltip copyWithZone: zone];
	copyVariwide.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyVariwide.pointWidth = [self.pointWidth copyWithZone: zone];
	copyVariwide.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyVariwide.dataLabels = [self.dataLabels copyWithZone: zone];
	copyVariwide.borderWidth = [self.borderWidth copyWithZone: zone];
	copyVariwide.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyVariwide.grouping = [self.grouping copyWithZone: zone];
	copyVariwide.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyVariwide.selected = [self.selected copyWithZone: zone];
	copyVariwide.colorIndex = [self.colorIndex copyWithZone: zone];
	copyVariwide.clip = [self.clip copyWithZone: zone];
	copyVariwide.negativeColor = [self.negativeColor copyWithZone: zone];
	copyVariwide.color = [self.color copyWithZone: zone];
	copyVariwide.pointInterval = [self.pointInterval copyWithZone: zone];
	copyVariwide.colorKey = [self.colorKey copyWithZone: zone];
	copyVariwide.dragDrop = [self.dragDrop copyWithZone: zone];
	copyVariwide.point = [self.point copyWithZone: zone];
	copyVariwide.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyVariwide.cursor = [self.cursor copyWithZone: zone];
	copyVariwide.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyVariwide.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyVariwide.label = [self.label copyWithZone: zone];
	copyVariwide.stacking = [self.stacking copyWithZone: zone];
	copyVariwide.animation = [self.animation copyWithZone: zone];
	copyVariwide.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyVariwide.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyVariwide.boostBlending = [self.boostBlending copyWithZone: zone];
	copyVariwide.events = [self.events copyWithZone: zone];
	copyVariwide.opacity = [self.opacity copyWithZone: zone];
	copyVariwide.animationLimit = [self.animationLimit copyWithZone: zone];
	copyVariwide.definition = [self.definition copyWithZone: zone];
	copyVariwide.keys = [self.keys copyWithZone: zone];
	copyVariwide.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyVariwide.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyVariwide.accessibility = [self.accessibility copyWithZone: zone];
	copyVariwide.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyVariwide.shadow = [self.shadow copyWithZone: zone];
	copyVariwide.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyVariwide.colorAxis = [self.colorAxis copyWithZone: zone];
	copyVariwide.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyVariwide.zones = [self.zones copyWithZone: zone];
	copyVariwide.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyVariwide.visible = [self.visible copyWithZone: zone];
	copyVariwide.linkedTo = [self.linkedTo copyWithZone: zone];
	copyVariwide.className = [self.className copyWithZone: zone];
	copyVariwide.pointStart = [self.pointStart copyWithZone: zone];
	copyVariwide.showInLegend = [self.showInLegend copyWithZone: zone];
	copyVariwide.data = [self.data copyWithZone: zone];
	copyVariwide.id = [self.id copyWithZone: zone];
	copyVariwide.index = [self.index copyWithZone: zone];
	copyVariwide.legendIndex = [self.legendIndex copyWithZone: zone];
	copyVariwide.name = [self.name copyWithZone: zone];
	copyVariwide.stack = [self.stack copyWithZone: zone];
	copyVariwide.type = [self.type copyWithZone: zone];
	copyVariwide.xAxis = [self.xAxis copyWithZone: zone];
	copyVariwide.yAxis = [self.yAxis copyWithZone: zone];
	copyVariwide.zIndex = [self.zIndex copyWithZone: zone];
	return copyVariwide;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
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
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
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

-(void)setGroupPadding:(NSNumber *)groupPadding {
	NSNumber *oldValue = _groupPadding;
	_groupPadding = groupPadding;
	[self updateNSObject:oldValue newValue:groupPadding propertyName:@"groupPadding"];
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