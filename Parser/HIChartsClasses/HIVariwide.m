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
	copyVariwide.point = [self.point copyWithZone: zone];
	copyVariwide.selected = [self.selected copyWithZone: zone];
	copyVariwide.colorIndex = [self.colorIndex copyWithZone: zone];
	copyVariwide.clip = [self.clip copyWithZone: zone];
	copyVariwide.negativeColor = [self.negativeColor copyWithZone: zone];
	copyVariwide.color = [self.color copyWithZone: zone];
	copyVariwide.pointInterval = [self.pointInterval copyWithZone: zone];
	copyVariwide.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyVariwide.className = [self.className copyWithZone: zone];
	copyVariwide.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyVariwide.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyVariwide.label = [self.label copyWithZone: zone];
	copyVariwide.stacking = [self.stacking copyWithZone: zone];
	copyVariwide.animation = [self.animation copyWithZone: zone];
	copyVariwide.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyVariwide.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyVariwide.events = [self.events copyWithZone: zone];
	copyVariwide.animationLimit = [self.animationLimit copyWithZone: zone];
	copyVariwide.definition = [self.definition copyWithZone: zone];
	copyVariwide.keys = [self.keys copyWithZone: zone];
	copyVariwide.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyVariwide.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyVariwide.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyVariwide.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyVariwide.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyVariwide.shadow = [self.shadow copyWithZone: zone];
	copyVariwide.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyVariwide.zones = [self.zones copyWithZone: zone];
	copyVariwide.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyVariwide.visible = [self.visible copyWithZone: zone];
	copyVariwide.linkedTo = [self.linkedTo copyWithZone: zone];
	copyVariwide.cursor = [self.cursor copyWithZone: zone];
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
	if (self.maxPointWidth) {
		params[@"maxPointWidth"] = self.maxPointWidth;
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.colorByPoint) {
		params[@"colorByPoint"] = self.colorByPoint;
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

-(void)setGroupPadding:(NSNumber *)groupPadding {
	_groupPadding = groupPadding;
	[self updateNSObject:@"groupPadding"];
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

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setGrouping:(NSNumber *)grouping {
	_grouping = grouping;
	[self updateNSObject:@"grouping"];
}

@end