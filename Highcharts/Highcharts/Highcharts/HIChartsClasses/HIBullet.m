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
	copyBullet.tooltip = [self.tooltip copyWithZone: zone];
	copyBullet.targetOptions = [self.targetOptions copyWithZone: zone];
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
	copyBullet.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyBullet.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyBullet.pointWidth = [self.pointWidth copyWithZone: zone];
	copyBullet.pointPadding = [self.pointPadding copyWithZone: zone];
	copyBullet.groupPadding = [self.groupPadding copyWithZone: zone];
	copyBullet.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyBullet.crisp = [self.crisp copyWithZone: zone];
	copyBullet.dataLabels = [self.dataLabels copyWithZone: zone];
	copyBullet.depth = [self.depth copyWithZone: zone];
	copyBullet.borderWidth = [self.borderWidth copyWithZone: zone];
	copyBullet.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyBullet.grouping = [self.grouping copyWithZone: zone];
	copyBullet.selected = [self.selected copyWithZone: zone];
	copyBullet.colorIndex = [self.colorIndex copyWithZone: zone];
	copyBullet.clip = [self.clip copyWithZone: zone];
	copyBullet.point = [self.point copyWithZone: zone];
	copyBullet.color = [self.color copyWithZone: zone];
	copyBullet.pointInterval = [self.pointInterval copyWithZone: zone];
	copyBullet.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyBullet.cursor = [self.cursor copyWithZone: zone];
	copyBullet.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyBullet.negativeColor = [self.negativeColor copyWithZone: zone];
	copyBullet.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyBullet.label = [self.label copyWithZone: zone];
	copyBullet.stacking = [self.stacking copyWithZone: zone];
	copyBullet.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyBullet.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyBullet.events = [self.events copyWithZone: zone];
	copyBullet.animationLimit = [self.animationLimit copyWithZone: zone];
	copyBullet.definition = [self.definition copyWithZone: zone];
	copyBullet.keys = [self.keys copyWithZone: zone];
	copyBullet.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyBullet.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyBullet.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyBullet.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyBullet.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyBullet.shadow = [self.shadow copyWithZone: zone];
	copyBullet.animation = [self.animation copyWithZone: zone];
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

-(void)setTargetOptions:(HITargetOptions *)targetOptions {
	HITargetOptions *oldValue = _targetOptions;
	if(self.targetOptions) {
		[self removeObserver:self forKeyPath:@"targetOptions.isUpdated"];
	}
	_targetOptions = targetOptions;
	[self updateHIObject:oldValue newValue:targetOptions propertyName:@"targetOptions"];
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

-(void)setColorByPoint:(NSNumber *)colorByPoint {
	_colorByPoint = colorByPoint;
	[self updateNSObject:@"colorByPoint"];
}

-(void)setMaxPointWidth:(NSNumber *)maxPointWidth {
	_maxPointWidth = maxPointWidth;
	[self updateNSObject:@"maxPointWidth"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	_pointWidth = pointWidth;
	[self updateNSObject:@"pointWidth"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
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