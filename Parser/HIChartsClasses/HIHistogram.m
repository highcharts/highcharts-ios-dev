#import "HIChartsJSONSerializableSubclass.h"
#import "HIHistogram.h"

@implementation HIHistogram

-(instancetype)init {
	if (self = [super init]) {
		self.type = @"histogram";
		return self;
	} else {
		return nil;
	}
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIHistogram *copyHistogram = [[HIHistogram allocWithZone: zone] init];
	copyHistogram.baseSeries = [self.baseSeries copyWithZone: zone];
	copyHistogram.id = [self.id copyWithZone: zone];
	copyHistogram.index = [self.index copyWithZone: zone];
	copyHistogram.legendIndex = [self.legendIndex copyWithZone: zone];
	copyHistogram.name = [self.name copyWithZone: zone];
	copyHistogram.stack = [self.stack copyWithZone: zone];
	copyHistogram.type = [self.type copyWithZone: zone];
	copyHistogram.xAxis = [self.xAxis copyWithZone: zone];
	copyHistogram.yAxis = [self.yAxis copyWithZone: zone];
	copyHistogram.zIndex = [self.zIndex copyWithZone: zone];
	copyHistogram.pointPadding = [self.pointPadding copyWithZone: zone];
	copyHistogram.pointPlacement = [self.pointPlacement copyWithZone: zone];
	copyHistogram.binWidth = [self.binWidth copyWithZone: zone];
	copyHistogram.tooltip = [self.tooltip copyWithZone: zone];
	copyHistogram.binsNumber = [self.binsNumber copyWithZone: zone];
	copyHistogram.groupPadding = [self.groupPadding copyWithZone: zone];
	copyHistogram.grouping = [self.grouping copyWithZone: zone];
	copyHistogram.borderRadius = [self.borderRadius copyWithZone: zone];
	copyHistogram.pointRange = [self.pointRange copyWithZone: zone];
	copyHistogram.minPointLength = [self.minPointLength copyWithZone: zone];
	copyHistogram.groupZPadding = [self.groupZPadding copyWithZone: zone];
	copyHistogram.cropThreshold = [self.cropThreshold copyWithZone: zone];
	copyHistogram.states = [self.states copyWithZone: zone];
	copyHistogram.colors = [self.colors copyWithZone: zone];
	copyHistogram.softThreshold = [self.softThreshold copyWithZone: zone];
	copyHistogram.threshold = [self.threshold copyWithZone: zone];
	copyHistogram.borderColor = [self.borderColor copyWithZone: zone];
	copyHistogram.edgeColor = [self.edgeColor copyWithZone: zone];
	copyHistogram.colorByPoint = [self.colorByPoint copyWithZone: zone];
	copyHistogram.maxPointWidth = [self.maxPointWidth copyWithZone: zone];
	copyHistogram.pointWidth = [self.pointWidth copyWithZone: zone];
	copyHistogram.edgeWidth = [self.edgeWidth copyWithZone: zone];
	copyHistogram.crisp = [self.crisp copyWithZone: zone];
	copyHistogram.dataLabels = [self.dataLabels copyWithZone: zone];
	copyHistogram.depth = [self.depth copyWithZone: zone];
	copyHistogram.borderWidth = [self.borderWidth copyWithZone: zone];
	copyHistogram.stickyTracking = [self.stickyTracking copyWithZone: zone];
	copyHistogram.selected = [self.selected copyWithZone: zone];
	copyHistogram.colorIndex = [self.colorIndex copyWithZone: zone];
	copyHistogram.clip = [self.clip copyWithZone: zone];
	copyHistogram.point = [self.point copyWithZone: zone];
	copyHistogram.color = [self.color copyWithZone: zone];
	copyHistogram.dragDrop = [self.dragDrop copyWithZone: zone];
	copyHistogram.pointDescriptionFormatter = [self.pointDescriptionFormatter copyWithZone: zone];
	copyHistogram.cursor = [self.cursor copyWithZone: zone];
	copyHistogram.negativeColor = [self.negativeColor copyWithZone: zone];
	copyHistogram.enableMouseTracking = [self.enableMouseTracking copyWithZone: zone];
	copyHistogram.label = [self.label copyWithZone: zone];
	copyHistogram.findNearestPointBy = [self.findNearestPointBy copyWithZone: zone];
	copyHistogram.showCheckbox = [self.showCheckbox copyWithZone: zone];
	copyHistogram.events = [self.events copyWithZone: zone];
	copyHistogram.animationLimit = [self.animationLimit copyWithZone: zone];
	copyHistogram.definition = [self.definition copyWithZone: zone];
	copyHistogram.keys = [self.keys copyWithZone: zone];
	copyHistogram.turboThreshold = [self.turboThreshold copyWithZone: zone];
	copyHistogram.skipKeyboardNavigation = [self.skipKeyboardNavigation copyWithZone: zone];
	copyHistogram.allowPointSelect = [self.allowPointSelect copyWithZone: zone];
	copyHistogram.getExtremesFromAll = [self.getExtremesFromAll copyWithZone: zone];
	copyHistogram.exposeElementToA11y = [self.exposeElementToA11y copyWithZone: zone];
	copyHistogram.shadow = [self.shadow copyWithZone: zone];
	copyHistogram.animation = [self.animation copyWithZone: zone];
	copyHistogram.zoneAxis = [self.zoneAxis copyWithZone: zone];
	copyHistogram.zones = [self.zones copyWithZone: zone];
	copyHistogram.visible = [self.visible copyWithZone: zone];
	copyHistogram.linkedTo = [self.linkedTo copyWithZone: zone];
	copyHistogram.className = [self.className copyWithZone: zone];
	copyHistogram.pointStart = [self.pointStart copyWithZone: zone];
	copyHistogram.showInLegend = [self.showInLegend copyWithZone: zone];
	return copyHistogram;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: [super getParams]];
	if (self.baseSeries) {
		params[@"baseSeries"] = self.baseSeries;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.binWidth) {
		params[@"binWidth"] = self.binWidth;
	}
	if (self.binsNumber) {
		params[@"binsNumber"] = self.binsNumber;
	}
	if (self.groupPadding) {
		params[@"groupPadding"] = self.groupPadding;
	}
	if (self.grouping) {
		params[@"grouping"] = self.grouping;
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

-(void)setBaseSeries:(id)baseSeries {
	_baseSeries = baseSeries;
	[self updateNSObject:@"baseSeries"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
}

-(void)setBinWidth:(NSNumber *)binWidth {
	_binWidth = binWidth;
	[self updateNSObject:@"binWidth"];
}

-(void)setBinsNumber:(id)binsNumber {
	_binsNumber = binsNumber;
	[self updateNSObject:@"binsNumber"];
}

-(void)setGroupPadding:(NSNumber *)groupPadding {
	_groupPadding = groupPadding;
	[self updateNSObject:@"groupPadding"];
}

-(void)setGrouping:(NSNumber *)grouping {
	_grouping = grouping;
	[self updateNSObject:@"grouping"];
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