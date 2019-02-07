#import "HIChartsJSONSerializableSubclass.h"
#import "HIXrange.h"

@implementation HIXrange

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"xrange";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIXrange *copyXrange = [[HIXrange allocWithZone: zone] init];
	copyXrange.data = [self.data copyWithZone: zone];
	copyXrange.id = [self.id copyWithZone: zone];
	copyXrange.index = [self.index copyWithZone: zone];
	copyXrange.legendIndex = [self.legendIndex copyWithZone: zone];
	copyXrange.name = [self.name copyWithZone: zone];
	copyXrange.stack = [self.stack copyWithZone: zone];
	copyXrange.type = [self.type copyWithZone: zone];
	copyXrange.xAxis = [self.xAxis copyWithZone: zone];
	copyXrange.yAxis = [self.yAxis copyWithZone: zone];
	copyXrange.zIndex = [self.zIndex copyWithZone: zone];
	copyXrange.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyXrange.partialFill = [self.partialFill copyWithZone: zone];
	copyXrange.borderRadius = [self.borderRadius copyWithZone: zone];
	copyXrange.tooltip = [self.tooltip copyWithZone: zone];
	copyXrange.dataLabels = [self.dataLabels copyWithZone: zone];
	copyXrange.dragDrop = [self.dragDrop copyWithZone: zone];
	copyXrange.pointPadding = [self.pointPadding copyWithZone: zone];
	copyXrange.minPointLength = [self.minPointLength copyWithZone: zone];
	copyXrange.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyXrange.states = [self.states copyWithZone: zone];
	copyXrange.colors = [self.colors copyWithZone: zone];
	copyXrange.borderColor = [self.borderColor copyWithZone: zone];
	copyXrange.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyXrange.pointWidth = [self.pointWidth copyWithZone: zone];
	copyXrange.groupPadding = [self.groupPadding copyWithZone: zone];
	copyXrange.borderWidth = [self.borderWidth copyWithZone: zone];
	copyXrange.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyXrange.grouping = [self.grouping copyWithZone: zone];
	copyXrange.point = [self.point copyWithZone: zone];
	copyXrange.selected = [self.selected copyWithZone: zone];
	copyXrange.colorIndex = [self.colorIndex copyWithZone: zone];
	copyXrange.clip = [self.clip copyWithZone: zone];
	copyXrange.color = [self.color copyWithZone: zone];
	copyXrange.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyXrange.className = [self.className copyWithZone: zone];
	copyXrange.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyXrange.label = [self.label copyWithZone: zone];
	copyXrange.animation = [self.animation copyWithZone: zone];
	copyXrange.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyXrange.boostBlending = [self.boostBlending copyWithZone: zone];
	copyXrange.events = [self.events copyWithZone: zone];
	copyXrange.animationLimit = [self.animationLimit copyWithZone: zone];
	copyXrange.definition = [self.definition copyWithZone: zone];
	copyXrange.keys = [self.keys copyWithZone: zone];
	copyXrange.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyXrange.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyXrange.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyXrange.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyXrange.shadow = [self.shadow copyWithZone: zone];
	copyXrange.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyXrange.zones = [self.zones copyWithZone: zone];
	copyXrange.visible = [self.visible copyWithZone: zone];
	copyXrange.linkedTo = [self.linkedTo copyWithZone: zone];
	copyXrange.cursor = [self.cursor copyWithZone: zone];
	copyXrange.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyXrange;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
	}
	if (self.partialFill) {
		params[@"partialFill"] = [self.partialFill getParams];
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
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
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
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

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	NSNumber *oldValue = _colorByPoint;
	_colorByPoint = colorByPoint;
	[self updateNSObject:oldValue newValue:colorByPoint propertyName:@"colorByPoint"];
}

-(void)setPartialFill:(HIPartialFill *)partialFill {
	HIPartialFill *oldValue = _partialFill;
	_partialFill = partialFill;
	[self updateHIObject:oldValue newValue:partialFill propertyName:@"partialFill"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
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

-(void)setGroupPadding:(NSNumber *)groupPadding {
	NSNumber *oldValue = _groupPadding;
	_groupPadding = groupPadding;
	[self updateNSObject:oldValue newValue:groupPadding propertyName:@"groupPadding"];
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