#import "HIChartsJSONSerializableSubclass.h"
#import "HIBullet.h"

@implementation HIBullet

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"bullet";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBullet *copyBullet = [[HIBullet allocWithZone: zone] init];
	copyBullet.states = [self.states copyWithZone: zone];
	copyBullet.data = [self.data copyWithZone: zone];
	copyBullet.id = [self.id copyWithZone: zone];
	copyBullet.index = [self.index copyWithZone: zone];
	copyBullet.legendIndex = [self.legendIndex copyWithZone: zone];
	copyBullet.name = [self.name copyWithZone: zone];
	copyBullet.stack = [self.stack copyWithZone: zone];
	copyBullet.type = [self.type copyWithZone: zone];
	copyBullet.xAxis = [self.xAxis copyWithZone: zone];
	copyBullet.yAxis = [self.yAxis copyWithZone: zone];
	copyBullet.zIndex = [self.zIndex copyWithZone: zone];
	copyBullet.dragDrop = [self.dragDrop copyWithZone: zone];
	copyBullet.targetOptions = [self.targetOptions copyWithZone: zone];
	copyBullet.tooltip = [self.tooltip copyWithZone: zone];
	copyBullet.pointPadding = [self.pointPadding copyWithZone: zone];
	copyBullet.borderRadius = [self.borderRadius copyWithZone: zone];
	copyBullet.pointRange = [self.pointRange copyWithZone: zone];
	copyBullet.minPointLength = [self.minPointLength copyWithZone: zone];
	copyBullet.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyBullet.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyBullet.colors = [self.colors copyWithZone: zone];
	copyBullet.softThreshold = [self.softThreshold copyWithZone: zone];
	copyBullet.threshold = [self.threshold copyWithZone: zone];
	copyBullet.borderColor = [self.borderColor copyWithZone: zone];
	copyBullet.edgeColor = [self.edgeColor copyWithZone: zone];
	copyBullet.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyBullet.pointWidth = [self.pointWidth copyWithZone: zone];
	copyBullet.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyBullet.groupPadding = [self.groupPadding copyWithZone: zone];
	copyBullet.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyBullet.crisp = [self.crisp copyWithZone: zone];
	copyBullet.dataLabels = [self.dataLabels copyWithZone: zone];
	copyBullet.depth = [self.depth copyWithZone: zone];
	copyBullet.borderWidth = [self.borderWidth copyWithZone: zone];
	copyBullet.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyBullet.grouping = [self.grouping copyWithZone: zone];
	copyBullet.includeInDataExport = [self.includeInDataExport copyWithZone: zone];
	copyBullet.selected = [self.selected copyWithZone: zone];
	copyBullet.colorIndex = [self.colorIndex copyWithZone: zone];
	copyBullet.clip = [self.clip copyWithZone: zone];
	copyBullet.negativeColor = [self.negativeColor copyWithZone: zone];
	copyBullet.color = [self.color copyWithZone: zone];
	copyBullet.pointInterval = [self.pointInterval copyWithZone: zone];
	copyBullet.colorKey = [self.colorKey copyWithZone: zone];
	copyBullet.point = [self.point copyWithZone: zone];
	copyBullet.label = [self.label copyWithZone: zone];
	copyBullet.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyBullet.cursor = [self.cursor copyWithZone: zone];
	copyBullet.dashStyle = [self.dashStyle copyWithZone: zone];
	copyBullet.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyBullet.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyBullet.custom = [self.custom copyWithZone: zone];
	copyBullet.stacking = [self.stacking copyWithZone: zone];
	copyBullet.animation = [self.animation copyWithZone: zone];
	copyBullet.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyBullet.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyBullet.boostBlending = [self.boostBlending copyWithZone: zone];
	copyBullet.events = [self.events copyWithZone: zone];
	copyBullet.opacity = [self.opacity copyWithZone: zone];
	copyBullet.animationLimit = [self.animationLimit copyWithZone: zone];
	copyBullet.definition = [self.definition copyWithZone: zone];
	copyBullet.keys = [self.keys copyWithZone: zone];
	copyBullet.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyBullet.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyBullet.accessibility = [self.accessibility copyWithZone: zone];
	copyBullet.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyBullet.shadow = [self.shadow copyWithZone: zone];
	copyBullet.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyBullet.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyBullet.zones = [self.zones copyWithZone: zone];
	copyBullet.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyBullet.visible = [self.visible copyWithZone: zone];
	copyBullet.linkedTo = [self.linkedTo copyWithZone: zone];
	copyBullet.className = [self.className copyWithZone: zone];
	copyBullet.pointStart = [self.pointStart copyWithZone: zone];
	copyBullet.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyBullet;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.targetOptions) {
		params[@"targetOptions"] = [self.targetOptions getParams];
	}
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
		for (HIColor *obj in self.colors) {
			[array addObject:[obj getData]];
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

-(void)setTargetOptions:(HITargetOptions *)targetOptions {
	HITargetOptions *oldValue = _targetOptions;
	_targetOptions = targetOptions;
	[self updateHIObject:oldValue newValue:targetOptions propertyName:@"targetOptions"];
}

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