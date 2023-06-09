#import "HIChartsJSONSerializableSubclass.h"
#import "HIColumnpyramid.h"

@implementation HIColumnpyramid

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"columnpyramid";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIColumnpyramid *copyColumnpyramid = [[HIColumnpyramid allocWithZone: zone] init];
	copyColumnpyramid.states = [self.states copyWithZone: zone];
	copyColumnpyramid.data = [self.data copyWithZone: zone];
	copyColumnpyramid.id = [self.id copyWithZone: zone];
	copyColumnpyramid.index = [self.index copyWithZone: zone];
	copyColumnpyramid.legendIndex = [self.legendIndex copyWithZone: zone];
	copyColumnpyramid.name = [self.name copyWithZone: zone];
	copyColumnpyramid.stack = [self.stack copyWithZone: zone];
	copyColumnpyramid.type = [self.type copyWithZone: zone];
	copyColumnpyramid.xAxis = [self.xAxis copyWithZone: zone];
	copyColumnpyramid.yAxis = [self.yAxis copyWithZone: zone];
	copyColumnpyramid.zIndex = [self.zIndex copyWithZone: zone];
	copyColumnpyramid.pointPadding = [self.pointPadding copyWithZone: zone];
	copyColumnpyramid.pointRange = [self.pointRange copyWithZone: zone];
	copyColumnpyramid.minPointLength = [self.minPointLength copyWithZone: zone];
	copyColumnpyramid.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyColumnpyramid.colors = [self.colors copyWithZone: zone];
	copyColumnpyramid.dragDrop = [self.dragDrop copyWithZone: zone];
	copyColumnpyramid.borderColor = [self.borderColor copyWithZone: zone];
	copyColumnpyramid.centerInCategory = [self.centerInCategory copyWithZone: zone];
	copyColumnpyramid.tooltip = [self.tooltip copyWithZone: zone];
	copyColumnpyramid.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyColumnpyramid.pointWidth = [self.pointWidth copyWithZone: zone];
	copyColumnpyramid.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyColumnpyramid.groupPadding = [self.groupPadding copyWithZone: zone];
	copyColumnpyramid.dataLabels = [self.dataLabels copyWithZone: zone];
	copyColumnpyramid.borderWidth = [self.borderWidth copyWithZone: zone];
	copyColumnpyramid.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyColumnpyramid.grouping = [self.grouping copyWithZone: zone];
	copyColumnpyramid.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyColumnpyramid.colorIndex = [self.colorIndex copyWithZone: zone];
	copyColumnpyramid.clip = [self.clip copyWithZone: zone];
	copyColumnpyramid.color = [self.color copyWithZone: zone];
	copyColumnpyramid.pointInterval = [self.pointInterval copyWithZone: zone];
	copyColumnpyramid.colorKey = [self.colorKey copyWithZone: zone];
	copyColumnpyramid.point = [self.point copyWithZone: zone];
	copyColumnpyramid.dataSorting = [self.dataSorting copyWithZone: zone];
	copyColumnpyramid.label = [self.label copyWithZone: zone];
	copyColumnpyramid.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyColumnpyramid.cursor = [self.cursor copyWithZone: zone];
	copyColumnpyramid.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyColumnpyramid.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyColumnpyramid.custom = [self.custom copyWithZone: zone];
	copyColumnpyramid.onPoint = [self.onPoint copyWithZone: zone];
	copyColumnpyramid.stacking = [self.stacking copyWithZone: zone];
	copyColumnpyramid.animation = [self.animation copyWithZone: zone];
	copyColumnpyramid.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyColumnpyramid.relativeXValue = [self.relativeXValue copyWithZone: zone];
	copyColumnpyramid.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyColumnpyramid.legendSymbol = [self.legendSymbol copyWithZone: zone];
	copyColumnpyramid.events = [self.events copyWithZone: zone];
	copyColumnpyramid.pointDescriptionFormat = [self.pointDescriptionFormat copyWithZone: zone];
	copyColumnpyramid.opacity = [self.opacity copyWithZone: zone];
	copyColumnpyramid.animationLimit = [self.animationLimit copyWithZone: zone];
	copyColumnpyramid.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyColumnpyramid.definition = [self.definition copyWithZone: zone];
	copyColumnpyramid.keys = [self.keys copyWithZone: zone];
	copyColumnpyramid.selected = [self.selected copyWithZone: zone];
	copyColumnpyramid.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyColumnpyramid.accessibility = [self.accessibility copyWithZone: zone];
	copyColumnpyramid.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyColumnpyramid.sonification = [self.sonification copyWithZone: zone];
	copyColumnpyramid.shadow = [self.shadow copyWithZone: zone];
	copyColumnpyramid.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyColumnpyramid.colorAxis = [self.colorAxis copyWithZone: zone];
	copyColumnpyramid.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyColumnpyramid.visible = [self.visible copyWithZone: zone];
	copyColumnpyramid.linkedTo = [self.linkedTo copyWithZone: zone];
	copyColumnpyramid.className = [self.className copyWithZone: zone];
	copyColumnpyramid.pointStart = [self.pointStart copyWithZone: zone];
	copyColumnpyramid.showInLegend = [self.showInLegend copyWithZone: zone];
	copyColumnpyramid.dashStyle = [self.dashStyle copyWithZone: zone];
	return copyColumnpyramid;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
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
	if (self.centerInCategory) {
		params[@"centerInCategory"] = self.centerInCategory;
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

-(void)setCenterInCategory:(NSNumber *)centerInCategory {
	NSNumber *oldValue = _centerInCategory;
	_centerInCategory = centerInCategory;
	[self updateNSObject:oldValue newValue:centerInCategory propertyName:@"centerInCategory"];
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