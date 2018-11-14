#import "HIChartsJSONSerializableSubclass.h"
#import "HIErrorbar.h"

@implementation HIErrorbar

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"errorbar";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIErrorbar *copyErrorbar = [[HIErrorbar allocWithZone: zone] init];
	copyErrorbar.data = [self.data copyWithZone: zone];
	copyErrorbar.id = [self.id copyWithZone: zone];
	copyErrorbar.index = [self.index copyWithZone: zone];
	copyErrorbar.legendIndex = [self.legendIndex copyWithZone: zone];
	copyErrorbar.name = [self.name copyWithZone: zone];
	copyErrorbar.type = [self.type copyWithZone: zone];
	copyErrorbar.xAxis = [self.xAxis copyWithZone: zone];
	copyErrorbar.yAxis = [self.yAxis copyWithZone: zone];
	copyErrorbar.zIndex = [self.zIndex copyWithZone: zone];
	copyErrorbar.color = [self.color copyWithZone: zone];
	copyErrorbar.linkedTo = [self.linkedTo copyWithZone: zone];
	copyErrorbar.whiskerWidth = [self.whiskerWidth copyWithZone: zone];
	copyErrorbar.tooltip = [self.tooltip copyWithZone: zone];
	copyErrorbar.grouping = [self.grouping copyWithZone: zone];
	copyErrorbar.medianColor = [self.medianColor copyWithZone: zone];
	copyErrorbar.medianWidth = [self.medianWidth copyWithZone: zone];
	copyErrorbar.whiskerColor = [self.whiskerColor copyWithZone: zone];
	copyErrorbar.stemColor = [self.stemColor copyWithZone: zone];
	copyErrorbar.whiskerLength = [self.whiskerLength copyWithZone: zone];
	copyErrorbar.stemDashStyle = [self.stemDashStyle copyWithZone: zone];
	copyErrorbar.dragDrop = [self.dragDrop copyWithZone: zone];
	copyErrorbar.threshold = [self.threshold copyWithZone: zone];
	copyErrorbar.lineWidth = [self.lineWidth copyWithZone: zone];
	copyErrorbar.stemWidth = [self.stemWidth copyWithZone: zone];
	copyErrorbar.fillColor = [self.fillColor copyWithZone: zone];
	copyErrorbar.pointRange = [self.pointRange copyWithZone: zone];
	copyErrorbar.minPointLength = [self.minPointLength copyWithZone: zone];
	copyErrorbar.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyErrorbar.colors = [self.colors copyWithZone: zone];
	copyErrorbar.softThreshold = [self.softThreshold copyWithZone: zone];
	copyErrorbar.edgeColor = [self.edgeColor copyWithZone: zone];
	copyErrorbar.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyErrorbar.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyErrorbar.pointWidth = [self.pointWidth copyWithZone: zone];
	copyErrorbar.pointPadding = [self.pointPadding copyWithZone: zone];
	copyErrorbar.groupPadding = [self.groupPadding copyWithZone: zone];
	copyErrorbar.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyErrorbar.crisp = [self.crisp copyWithZone: zone];
	copyErrorbar.dataLabels = [self.dataLabels copyWithZone: zone];
	copyErrorbar.depth = [self.depth copyWithZone: zone];
	copyErrorbar.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyErrorbar.selected = [self.selected copyWithZone: zone];
	copyErrorbar.colorIndex = [self.colorIndex copyWithZone: zone];
	copyErrorbar.clip = [self.clip copyWithZone: zone];
	copyErrorbar.point = [self.point copyWithZone: zone];
	copyErrorbar.pointInterval = [self.pointInterval copyWithZone: zone];
	copyErrorbar.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyErrorbar.cursor = [self.cursor copyWithZone: zone];
	copyErrorbar.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyErrorbar.negativeColor = [self.negativeColor copyWithZone: zone];
	copyErrorbar.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyErrorbar.label = [self.label copyWithZone: zone];
	copyErrorbar.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyErrorbar.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyErrorbar.events = [self.events copyWithZone: zone];
	copyErrorbar.animationLimit = [self.animationLimit copyWithZone: zone];
	copyErrorbar.definition = [self.definition copyWithZone: zone];
	copyErrorbar.keys = [self.keys copyWithZone: zone];
	copyErrorbar.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyErrorbar.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyErrorbar.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyErrorbar.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyErrorbar.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyErrorbar.shadow = [self.shadow copyWithZone: zone];
	copyErrorbar.animation = [self.animation copyWithZone: zone];
	copyErrorbar.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyErrorbar.zones = [self.zones copyWithZone: zone];
	copyErrorbar.pointIntervalUnit = [self.pointIntervalUnit copyWithZone: zone];
	copyErrorbar.visible = [self.visible copyWithZone: zone];
	copyErrorbar.boostThreshold = [self.boostThreshold copyWithZone: zone];
	copyErrorbar.className = [self.className copyWithZone: zone];
	copyErrorbar.pointStart = [self.pointStart copyWithZone: zone];
	copyErrorbar.showInLegend = [self.showInLegend copyWithZone: zone];
	copyErrorbar.stacking = [self.stacking copyWithZone: zone];
	return copyErrorbar;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.whiskerWidth) {
		params[@"whiskerWidth"] = self.whiskerWidth;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
	}
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
	if (self.stemWidth) {
		params[@"stemWidth"] = self.stemWidth;
	}
	if (self.fillColor) {
		params[@"fillColor"] = [self.fillColor getData];
	}
	if (self.pointRange) {
		params[@"pointRange"] = self.pointRange;
	}
	if (self.minPointLength) {
		params[@"minPointLength"] = self.minPointLength;
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
	return params;
}

# pragma mark - Setters

-(void)setWhiskerWidth:(NSNumber *)whiskerWidth {
	_whiskerWidth = whiskerWidth;
	[self updateNSObject:@"whiskerWidth"];
}

-(void)setGrouping:(NSNumber *)grouping {
	_grouping = grouping;
	[self updateNSObject:@"grouping"];
}

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

-(void)setStemWidth:(NSNumber *)stemWidth {
	_stemWidth = stemWidth;
	[self updateNSObject:@"stemWidth"];
}

-(void)setFillColor:(HIColor *)fillColor {
	HIColor *oldValue = _fillColor;
	if(self.fillColor) {
		[self removeObserver:self forKeyPath:@"fillColor.isUpdated"];
	}
	_fillColor = fillColor;
	[self updateHIObject:oldValue newValue:fillColor propertyName:@"fillColor"];
}

-(void)setPointRange:(NSNumber *)pointRange {
	_pointRange = pointRange;
	[self updateNSObject:@"pointRange"];
}

-(void)setMinPointLength:(NSNumber *)minPointLength {
	_minPointLength = minPointLength;
	[self updateNSObject:@"minPointLength"];
}

-(void)setColors:(NSArray<NSString *> *)colors {
	NSArray<NSString *> *oldValue = _colors;
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

@end