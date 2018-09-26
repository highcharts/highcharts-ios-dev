#import "HIChartsJSONSerializableSubclass.h"
#import "HIBoxplot.h"

@implementation HIBoxplot

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"boxplot";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIBoxplot *copyBoxplot = [[HIBoxplot allocWithZone: zone] init];
	copyBoxplot.data = [self.data copyWithZone: zone];
	copyBoxplot.id = [self.id copyWithZone: zone];
	copyBoxplot.index = [self.index copyWithZone: zone];
	copyBoxplot.legendIndex = [self.legendIndex copyWithZone: zone];
	copyBoxplot.name = [self.name copyWithZone: zone];
	copyBoxplot.type = [self.type copyWithZone: zone];
	copyBoxplot.xAxis = [self.xAxis copyWithZone: zone];
	copyBoxplot.yAxis = [self.yAxis copyWithZone: zone];
	copyBoxplot.zIndex = [self.zIndex copyWithZone: zone];
	copyBoxplot.medianColor = [self.medianColor copyWithZone: zone];
	copyBoxplot.medianWidth = [self.medianWidth copyWithZone: zone];
	copyBoxplot.whiskerColor = [self.whiskerColor copyWithZone: zone];
	copyBoxplot.stemColor = [self.stemColor copyWithZone: zone];
	copyBoxplot.tooltip = [self.tooltip copyWithZone: zone];
	copyBoxplot.whiskerLength = [self.whiskerLength copyWithZone: zone];
	copyBoxplot.stemDashStyle = [self.stemDashStyle copyWithZone: zone];
	copyBoxplot.fillColor = [self.fillColor copyWithZone: zone];
	copyBoxplot.threshold = [self.threshold copyWithZone: zone];
	copyBoxplot.lineWidth = [self.lineWidth copyWithZone: zone];
	copyBoxplot.stemWidth = [self.stemWidth copyWithZone: zone];
	copyBoxplot.whiskerWidth = [self.whiskerWidth copyWithZone: zone];
	copyBoxplot.pointRange = [self.pointRange copyWithZone: zone];
	copyBoxplot.minPointLength = [self.minPointLength copyWithZone: zone];
	copyBoxplot.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyBoxplot.colors = [self.colors copyWithZone: zone];
	copyBoxplot.softThreshold = [self.softThreshold copyWithZone: zone];
	copyBoxplot.edgeColor = [self.edgeColor copyWithZone: zone];
	copyBoxplot.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyBoxplot.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyBoxplot.pointWidth = [self.pointWidth copyWithZone: zone];
	copyBoxplot.pointPadding = [self.pointPadding copyWithZone: zone];
	copyBoxplot.groupPadding = [self.groupPadding copyWithZone: zone];
	copyBoxplot.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyBoxplot.crisp = [self.crisp copyWithZone: zone];
	copyBoxplot.dataLabels = [self.dataLabels copyWithZone: zone];
	copyBoxplot.depth = [self.depth copyWithZone: zone];
	copyBoxplot.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyBoxplot.grouping = [self.grouping copyWithZone: zone];
	copyBoxplot.selected = [self.selected copyWithZone: zone];
	copyBoxplot.colorIndex = [self.colorIndex copyWithZone: zone];
	copyBoxplot.clip = [self.clip copyWithZone: zone];
	copyBoxplot.point = [self.point copyWithZone: zone];
	copyBoxplot.color = [self.color copyWithZone: zone];
	copyBoxplot.pointInterval = [self.pointInterval copyWithZone: zone];
	copyBoxplot.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyBoxplot.cursor = [self.cursor copyWithZone: zone];
	copyBoxplot.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyBoxplot.negativeColor = [self.negativeColor copyWithZone: zone];
	copyBoxplot.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyBoxplot.label = [self.label copyWithZone: zone];
	copyBoxplot.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyBoxplot.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyBoxplot.events = [self.events copyWithZone: zone];
	copyBoxplot.animationLimit = [self.animationLimit copyWithZone: zone];
	copyBoxplot.definition = [self.definition copyWithZone: zone];
	copyBoxplot.keys = [self.keys copyWithZone: zone];
	copyBoxplot.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyBoxplot.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyBoxplot.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyBoxplot.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyBoxplot.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyBoxplot.shadow = [self.shadow copyWithZone: zone];
	copyBoxplot.animation = [self.animation copyWithZone: zone];
	copyBoxplot.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyBoxplot.zones = [self.zones copyWithZone: zone];
	copyBoxplot.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyBoxplot.visible = [self.visible copyWithZone: zone];
	copyBoxplot.linkedTo = [self.linkedTo copyWithZone: zone];
	copyBoxplot.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyBoxplot.className = [self.className copyWithZone: zone];
	copyBoxplot.pointStart = [self.pointStart copyWithZone: zone];
	copyBoxplot.showInLegend = [self.showInLegend copyWithZone: zone];
	copyBoxplot.stacking = [self.stacking copyWithZone: zone];
	return copyBoxplot;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.medianColor) {
		params[@"medianColor"] = [self.medianColor getData];
	}
	if (self.medianWidth) {
		params[@"medianWidth"] = self.medianWidth;
	}
	if (self.whiskerColor) {
		params[@"whiskerColor"] = [self.whiskerColor getData];
	}
	if (self.stemColor) {
		params[@"stemColor"] = [self.stemColor getData];
	}
	if (self.whiskerLength) {
		params[@"whiskerLength"] = self.whiskerLength;
	}
	if (self.stemDashStyle) {
		params[@"stemDashStyle"] = self.stemDashStyle;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.stemWidth) {
		params[@"stemWidth"] = self.stemWidth;
	}
	if (self.whiskerWidth) {
		params[@"whiskerWidth"] = self.whiskerWidth;
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

-(void)setMedianColor:(HIColor *)medianColor {
	HIColor *oldValue = _medianColor;
	if(self.medianColor) {
		[self removeObserver:self forKeyPath:@"medianColor.isUpdated"];
	}
	_medianColor = medianColor;
	[self updateHIObject:oldValue newValue:medianColor propertyName:@"medianColor"];
}

-(void)setMedianWidth:(NSNumber *)medianWidth {
	_medianWidth = medianWidth;
	[self updateNSObject:@"medianWidth"];
}

-(void)setWhiskerColor:(HIColor *)whiskerColor {
	HIColor *oldValue = _whiskerColor;
	if(self.whiskerColor) {
		[self removeObserver:self forKeyPath:@"whiskerColor.isUpdated"];
	}
	_whiskerColor = whiskerColor;
	[self updateHIObject:oldValue newValue:whiskerColor propertyName:@"whiskerColor"];
}

-(void)setStemColor:(HIColor *)stemColor {
	HIColor *oldValue = _stemColor;
	if(self.stemColor) {
		[self removeObserver:self forKeyPath:@"stemColor.isUpdated"];
	}
	_stemColor = stemColor;
	[self updateHIObject:oldValue newValue:stemColor propertyName:@"stemColor"];
}

-(void)setWhiskerLength:(id)whiskerLength {
	_whiskerLength = whiskerLength;
	[self updateNSObject:@"whiskerLength"];
}

-(void)setStemDashStyle:(NSString *)stemDashStyle {
	_stemDashStyle = stemDashStyle;
	[self updateNSObject:@"stemDashStyle"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	if(self.fillColor) {
		[self removeObserver:self forKeyPath:@"fillColor.isUpdated"];
	}
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setStemWidth:(NSNumber *)stemWidth {
	_stemWidth = stemWidth;
	[self updateNSObject:@"stemWidth"];
}

-(void)setWhiskerWidth:(NSNumber *)whiskerWidth {
	_whiskerWidth = whiskerWidth;
	[self updateNSObject:@"whiskerWidth"];
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