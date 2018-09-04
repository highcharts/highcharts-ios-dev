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
	copyXrange.pointPadding = [self.pointPadding copyWithZone: zone];
	copyXrange.minPointLength = [self.minPointLength copyWithZone: zone];
	copyXrange.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyXrange.states = [self.states copyWithZone: zone];
	copyXrange.colors = [self.colors copyWithZone: zone];
	copyXrange.borderColor = [self.borderColor copyWithZone: zone];
	copyXrange.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyXrange.pointWidth = [self.pointWidth copyWithZone: zone];
	copyXrange.borderWidth = [self.borderWidth copyWithZone: zone];
	copyXrange.stickyTracking = [self.stickyTracking copyWithZone: zone];
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
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
		}
		params[@"colors"] = array;
	}
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setPartialFill:(HIPartialFill *)partialFill {
	HIPartialFill *oldValue = _partialFill;
	if(self.partialFill) {
		[self removeObserver:self forKeyPath:@"partialFill.isUpdated"];
	}
	_partialFill = partialFill;
	[self updateHIObject:oldValue newValue:partialFill propertyName:@"partialFill"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
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

-(void)setMaxPointWidth:(NSNumber *)maxPointWidth {
	_maxPointWidth = maxPointWidth;
	[self updateNSObject:@"maxPointWidth"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	_pointWidth = pointWidth;
	[self updateNSObject:@"pointWidth"];
}

@end