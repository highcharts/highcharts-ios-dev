#import "HIChartsJSONSerializableSubclass.h"
#import "HIXAxis.h"

@implementation HIXAxis

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIXAxis *copyXAxis = [[HIXAxis allocWithZone: zone] init];
	copyXAxis.minPadding = [self.minPadding copyWithZone: zone];
	copyXAxis.tickPixelInterval = [self.tickPixelInterval copyWithZone: zone];
	copyXAxis.gridZIndex = [self.gridZIndex copyWithZone: zone];
	copyXAxis.dateTimeLabelFormats = [self.dateTimeLabelFormats copyWithZone: zone];
	copyXAxis.visible = [self.visible copyWithZone: zone];
	copyXAxis.alignTicks = [self.alignTicks copyWithZone: zone];
	copyXAxis.pane = [self.pane copyWithZone: zone];
	copyXAxis.tickWidth = [self.tickWidth copyWithZone: zone];
	copyXAxis.showFirstLabel = [self.showFirstLabel copyWithZone: zone];
	copyXAxis.reversed = [self.reversed copyWithZone: zone];
	copyXAxis.startOfWeek = [self.startOfWeek copyWithZone: zone];
	copyXAxis.id = [self.id copyWithZone: zone];
	copyXAxis.tickPositions = [self.tickPositions copyWithZone: zone];
	copyXAxis.min = [self.min copyWithZone: zone];
	copyXAxis.minRange = [self.minRange copyWithZone: zone];
	copyXAxis.tickmarkPlacement = [self.tickmarkPlacement copyWithZone: zone];
	copyXAxis.allowDecimals = [self.allowDecimals copyWithZone: zone];
	copyXAxis.startOnTick = [self.startOnTick copyWithZone: zone];
	copyXAxis.minorGridLineColor = [self.minorGridLineColor copyWithZone: zone];
	copyXAxis.tickPositioner = [self.tickPositioner copyWithZone: zone];
	copyXAxis.plotBands = [self.plotBands copyWithZone: zone];
	copyXAxis.minorGridLineDashStyle = [self.minorGridLineDashStyle copyWithZone: zone];
	copyXAxis.minorTickLength = [self.minorTickLength copyWithZone: zone];
	copyXAxis.endOnTick = [self.endOnTick copyWithZone: zone];
	copyXAxis.plotLines = [self.plotLines copyWithZone: zone];
	copyXAxis.units = [self.units copyWithZone: zone];
	copyXAxis.softMin = [self.softMin copyWithZone: zone];
	copyXAxis.type = [self.type copyWithZone: zone];
	copyXAxis.events = [self.events copyWithZone: zone];
	copyXAxis.crosshair = [self.crosshair copyWithZone: zone];
	copyXAxis.ceiling = [self.ceiling copyWithZone: zone];
	copyXAxis.labels = [self.labels copyWithZone: zone];
	copyXAxis.gridLineDashStyle = [self.gridLineDashStyle copyWithZone: zone];
	copyXAxis.definition = [self.definition copyWithZone: zone];
	copyXAxis.opposite = [self.opposite copyWithZone: zone];
	copyXAxis.minorTickPosition = [self.minorTickPosition copyWithZone: zone];
	copyXAxis.max = [self.max copyWithZone: zone];
	copyXAxis.breaks = [self.breaks copyWithZone: zone];
	copyXAxis.showEmpty = [self.showEmpty copyWithZone: zone];
	copyXAxis.gridLineWidth = [self.gridLineWidth copyWithZone: zone];
	copyXAxis.minorTicks = [self.minorTicks copyWithZone: zone];
	copyXAxis.minorTickWidth = [self.minorTickWidth copyWithZone: zone];
	copyXAxis.floor = [self.floor copyWithZone: zone];
	copyXAxis.offset = [self.offset copyWithZone: zone];
	copyXAxis.tickColor = [self.tickColor copyWithZone: zone];
	copyXAxis.minTickInterval = [self.minTickInterval copyWithZone: zone];
	copyXAxis.tickInterval = [self.tickInterval copyWithZone: zone];
	copyXAxis.minorTickInterval = [self.minorTickInterval copyWithZone: zone];
	copyXAxis.categories = [self.categories copyWithZone: zone];
	copyXAxis.gridLineColor = [self.gridLineColor copyWithZone: zone];
	copyXAxis.reversedStacks = [self.reversedStacks copyWithZone: zone];
	copyXAxis.linkedTo = [self.linkedTo copyWithZone: zone];
	copyXAxis.minorGridLineWidth = [self.minorGridLineWidth copyWithZone: zone];
	copyXAxis.showLastLabel = [self.showLastLabel copyWithZone: zone];
	copyXAxis.minorTickColor = [self.minorTickColor copyWithZone: zone];
	copyXAxis.uniqueNames = [self.uniqueNames copyWithZone: zone];
	copyXAxis.maxPadding = [self.maxPadding copyWithZone: zone];
	copyXAxis.className = [self.className copyWithZone: zone];
	copyXAxis.tickAmount = [self.tickAmount copyWithZone: zone];
	copyXAxis.tickLength = [self.tickLength copyWithZone: zone];
	copyXAxis.lineColor = [self.lineColor copyWithZone: zone];
	copyXAxis.alternateGridColor = [self.alternateGridColor copyWithZone: zone];
	copyXAxis.title = [self.title copyWithZone: zone];
	copyXAxis.tickPosition = [self.tickPosition copyWithZone: zone];
	copyXAxis.lineWidth = [self.lineWidth copyWithZone: zone];
	copyXAxis.softMax = [self.softMax copyWithZone: zone];
	return copyXAxis;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.minPadding) {
		params[@"minPadding"] = self.minPadding;
	}
	if (self.tickPixelInterval) {
		params[@"tickPixelInterval"] = self.tickPixelInterval;
	}
	if (self.gridZIndex) {
		params[@"gridZIndex"] = self.gridZIndex;
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = [self.dateTimeLabelFormats getParams];
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.alignTicks) {
		params[@"alignTicks"] = self.alignTicks;
	}
	if (self.pane) {
		params[@"pane"] = self.pane;
	}
	if (self.tickWidth) {
		params[@"tickWidth"] = self.tickWidth;
	}
	if (self.showFirstLabel) {
		params[@"showFirstLabel"] = self.showFirstLabel;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.startOfWeek) {
		params[@"startOfWeek"] = self.startOfWeek;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.tickPositions) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.tickPositions) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"tickPositions"] = array;
	}
	if (self.min) {
		params[@"min"] = self.min;
	}
	if (self.minRange) {
		params[@"minRange"] = self.minRange;
	}
	if (self.tickmarkPlacement) {
		params[@"tickmarkPlacement"] = self.tickmarkPlacement;
	}
	if (self.allowDecimals) {
		params[@"allowDecimals"] = self.allowDecimals;
	}
	if (self.startOnTick) {
		params[@"startOnTick"] = self.startOnTick;
	}
	if (self.minorGridLineColor) {
		params[@"minorGridLineColor"] = [self.minorGridLineColor getData];
	}
	if (self.tickPositioner) {
		params[@"tickPositioner"] = [self.tickPositioner getFunction];
	}
	if (self.plotBands) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.plotBands) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"plotBands"] = array;
	}
	if (self.minorGridLineDashStyle) {
		params[@"minorGridLineDashStyle"] = self.minorGridLineDashStyle;
	}
	if (self.minorTickLength) {
		params[@"minorTickLength"] = self.minorTickLength;
	}
	if (self.endOnTick) {
		params[@"endOnTick"] = self.endOnTick;
	}
	if (self.plotLines) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.plotLines) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"plotLines"] = array;
	}
	if (self.units) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.units) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"units"] = array;
	}
	if (self.softMin) {
		params[@"softMin"] = self.softMin;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.crosshair) {
		params[@"crosshair"] = [self.crosshair getParams];
	}
	if (self.ceiling) {
		params[@"ceiling"] = self.ceiling;
	}
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.gridLineDashStyle) {
		params[@"gridLineDashStyle"] = self.gridLineDashStyle;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.opposite) {
		params[@"opposite"] = self.opposite;
	}
	if (self.minorTickPosition) {
		params[@"minorTickPosition"] = self.minorTickPosition;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.breaks) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.breaks) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"breaks"] = array;
	}
	if (self.showEmpty) {
		params[@"showEmpty"] = self.showEmpty;
	}
	if (self.gridLineWidth) {
		params[@"gridLineWidth"] = self.gridLineWidth;
	}
	if (self.minorTicks) {
		params[@"minorTicks"] = self.minorTicks;
	}
	if (self.minorTickWidth) {
		params[@"minorTickWidth"] = self.minorTickWidth;
	}
	if (self.floor) {
		params[@"floor"] = self.floor;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.tickColor) {
		params[@"tickColor"] = [self.tickColor getData];
	}
	if (self.minTickInterval) {
		params[@"minTickInterval"] = self.minTickInterval;
	}
	if (self.tickInterval) {
		params[@"tickInterval"] = self.tickInterval;
	}
	if (self.minorTickInterval) {
		params[@"minorTickInterval"] = self.minorTickInterval;
	}
	if (self.categories) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.categories) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"categories"] = array;
	}
	if (self.gridLineColor) {
		params[@"gridLineColor"] = [self.gridLineColor getData];
	}
	if (self.reversedStacks) {
		params[@"reversedStacks"] = self.reversedStacks;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.minorGridLineWidth) {
		params[@"minorGridLineWidth"] = self.minorGridLineWidth;
	}
	if (self.showLastLabel) {
		params[@"showLastLabel"] = self.showLastLabel;
	}
	if (self.minorTickColor) {
		params[@"minorTickColor"] = [self.minorTickColor getData];
	}
	if (self.uniqueNames) {
		params[@"uniqueNames"] = self.uniqueNames;
	}
	if (self.maxPadding) {
		params[@"maxPadding"] = self.maxPadding;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.tickAmount) {
		params[@"tickAmount"] = self.tickAmount;
	}
	if (self.tickLength) {
		params[@"tickLength"] = self.tickLength;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.alternateGridColor) {
		params[@"alternateGridColor"] = [self.alternateGridColor getData];
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.tickPosition) {
		params[@"tickPosition"] = self.tickPosition;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.softMax) {
		params[@"softMax"] = self.softMax;
	}
	return params;
}

# pragma mark - Setters

-(void)setMinPadding:(NSNumber *)minPadding {
	_minPadding = minPadding;
	[self updateNSObject:@"minPadding"];
}

-(void)setTickPixelInterval:(NSNumber *)tickPixelInterval {
	_tickPixelInterval = tickPixelInterval;
	[self updateNSObject:@"tickPixelInterval"];
}

-(void)setGridZIndex:(NSNumber *)gridZIndex {
	_gridZIndex = gridZIndex;
	[self updateNSObject:@"gridZIndex"];
}

-(void)setDateTimeLabelFormats:(HIDateTimeLabelFormats *)dateTimeLabelFormats {
	HIDateTimeLabelFormats *oldValue = _dateTimeLabelFormats;
	if(self.dateTimeLabelFormats) {
		[self removeObserver:self forKeyPath:@"dateTimeLabelFormats.isUpdated"];
	}
	_dateTimeLabelFormats = dateTimeLabelFormats;
	[self updateHIObject:oldValue newValue:dateTimeLabelFormats propertyName:@"dateTimeLabelFormats"];
}

-(void)setVisible:(NSNumber *)visible {
	_visible = visible;
	[self updateNSObject:@"visible"];
}

-(void)setAlignTicks:(NSNumber *)alignTicks {
	_alignTicks = alignTicks;
	[self updateNSObject:@"alignTicks"];
}

-(void)setPane:(NSNumber *)pane {
	_pane = pane;
	[self updateNSObject:@"pane"];
}

-(void)setTickWidth:(NSNumber *)tickWidth {
	_tickWidth = tickWidth;
	[self updateNSObject:@"tickWidth"];
}

-(void)setShowFirstLabel:(NSNumber *)showFirstLabel {
	_showFirstLabel = showFirstLabel;
	[self updateNSObject:@"showFirstLabel"];
}

-(void)setReversed:(NSNumber *)reversed {
	_reversed = reversed;
	[self updateNSObject:@"reversed"];
}

-(void)setStartOfWeek:(NSNumber *)startOfWeek {
	_startOfWeek = startOfWeek;
	[self updateNSObject:@"startOfWeek"];
}

-(void)setId:(NSString *)id {
	_id = id;
	[self updateNSObject:@"id"];
}

-(void)setTickPositions:(NSArray<NSNumber *> *)tickPositions {
	NSArray<NSNumber *> *oldValue = _tickPositions;
	_tickPositions = tickPositions;
	[self updateArrayObject:oldValue newValue:tickPositions propertyName:@"tickPositions"];
}

-(void)setMin:(NSNumber *)min {
	_min = min;
	[self updateNSObject:@"min"];
}

-(void)setMinRange:(NSNumber *)minRange {
	_minRange = minRange;
	[self updateNSObject:@"minRange"];
}

-(void)setTickmarkPlacement:(NSString *)tickmarkPlacement {
	_tickmarkPlacement = tickmarkPlacement;
	[self updateNSObject:@"tickmarkPlacement"];
}

-(void)setAllowDecimals:(NSNumber *)allowDecimals {
	_allowDecimals = allowDecimals;
	[self updateNSObject:@"allowDecimals"];
}

-(void)setStartOnTick:(NSNumber *)startOnTick {
	_startOnTick = startOnTick;
	[self updateNSObject:@"startOnTick"];
}

-(void)setMinorGridLineColor:(HIColor *)minorGridLineColor {
	HIColor *oldValue = _minorGridLineColor;
	if(self.minorGridLineColor) {
		[self removeObserver:self forKeyPath:@"minorGridLineColor.isUpdated"];
	}
	_minorGridLineColor = minorGridLineColor;
	[self updateHIObject:oldValue newValue:minorGridLineColor propertyName:@"minorGridLineColor"];
}

-(void)setTickPositioner:(HIFunction *)tickPositioner {
	HIFunction *oldValue = _tickPositioner;
	if(self.tickPositioner) {
		[self removeObserver:self forKeyPath:@"tickPositioner.isUpdated"];
	}
	_tickPositioner = tickPositioner;
	[self updateHIObject:oldValue newValue:tickPositioner propertyName:@"tickPositioner"];
}

-(void)setPlotBands:(NSArray <HIPlotBands *> *)plotBands {
	NSArray <HIPlotBands *> *oldValue = _plotBands;
	_plotBands = plotBands;
	[self updateArrayObject:oldValue newValue:plotBands propertyName:@"plotBands"];
}

-(void)setMinorGridLineDashStyle:(NSString *)minorGridLineDashStyle {
	_minorGridLineDashStyle = minorGridLineDashStyle;
	[self updateNSObject:@"minorGridLineDashStyle"];
}

-(void)setMinorTickLength:(NSNumber *)minorTickLength {
	_minorTickLength = minorTickLength;
	[self updateNSObject:@"minorTickLength"];
}

-(void)setEndOnTick:(NSNumber *)endOnTick {
	_endOnTick = endOnTick;
	[self updateNSObject:@"endOnTick"];
}

-(void)setPlotLines:(NSArray <HIPlotLines *> *)plotLines {
	NSArray <HIPlotLines *> *oldValue = _plotLines;
	_plotLines = plotLines;
	[self updateArrayObject:oldValue newValue:plotLines propertyName:@"plotLines"];
}

-(void)setUnits:(NSArray<NSArray *> *)units {
	NSArray<NSArray *> *oldValue = _units;
	_units = units;
	[self updateArrayObject:oldValue newValue:units propertyName:@"units"];
}

-(void)setSoftMin:(NSNumber *)softMin {
	_softMin = softMin;
	[self updateNSObject:@"softMin"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	if(self.events) {
		[self removeObserver:self forKeyPath:@"events.isUpdated"];
	}
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setCrosshair:(HICrosshair *)crosshair {
	HICrosshair *oldValue = _crosshair;
	if(self.crosshair) {
		[self removeObserver:self forKeyPath:@"crosshair.isUpdated"];
	}
	_crosshair = crosshair;
	[self updateHIObject:oldValue newValue:crosshair propertyName:@"crosshair"];
}

-(void)setCeiling:(NSNumber *)ceiling {
	_ceiling = ceiling;
	[self updateNSObject:@"ceiling"];
}

-(void)setLabels:(HILabels *)labels {
	HILabels *oldValue = _labels;
	if(self.labels) {
		[self removeObserver:self forKeyPath:@"labels.isUpdated"];
	}
	_labels = labels;
	[self updateHIObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setGridLineDashStyle:(NSString *)gridLineDashStyle {
	_gridLineDashStyle = gridLineDashStyle;
	[self updateNSObject:@"gridLineDashStyle"];
}

-(void)setDefinition:(NSString *)definition {
	_definition = definition;
	[self updateNSObject:@"definition"];
}

-(void)setOpposite:(NSNumber *)opposite {
	_opposite = opposite;
	[self updateNSObject:@"opposite"];
}

-(void)setMinorTickPosition:(NSString *)minorTickPosition {
	_minorTickPosition = minorTickPosition;
	[self updateNSObject:@"minorTickPosition"];
}

-(void)setMax:(NSNumber *)max {
	_max = max;
	[self updateNSObject:@"max"];
}

-(void)setBreaks:(NSArray <HIBreaks *> *)breaks {
	NSArray <HIBreaks *> *oldValue = _breaks;
	_breaks = breaks;
	[self updateArrayObject:oldValue newValue:breaks propertyName:@"breaks"];
}

-(void)setShowEmpty:(NSNumber *)showEmpty {
	_showEmpty = showEmpty;
	[self updateNSObject:@"showEmpty"];
}

-(void)setGridLineWidth:(NSNumber *)gridLineWidth {
	_gridLineWidth = gridLineWidth;
	[self updateNSObject:@"gridLineWidth"];
}

-(void)setMinorTicks:(NSNumber *)minorTicks {
	_minorTicks = minorTicks;
	[self updateNSObject:@"minorTicks"];
}

-(void)setMinorTickWidth:(NSNumber *)minorTickWidth {
	_minorTickWidth = minorTickWidth;
	[self updateNSObject:@"minorTickWidth"];
}

-(void)setFloor:(NSNumber *)floor {
	_floor = floor;
	[self updateNSObject:@"floor"];
}

-(void)setOffset:(NSNumber *)offset {
	_offset = offset;
	[self updateNSObject:@"offset"];
}

-(void)setTickColor:(HIColor *)tickColor {
	HIColor *oldValue = _tickColor;
	if(self.tickColor) {
		[self removeObserver:self forKeyPath:@"tickColor.isUpdated"];
	}
	_tickColor = tickColor;
	[self updateHIObject:oldValue newValue:tickColor propertyName:@"tickColor"];
}

-(void)setMinTickInterval:(NSNumber *)minTickInterval {
	_minTickInterval = minTickInterval;
	[self updateNSObject:@"minTickInterval"];
}

-(void)setTickInterval:(NSNumber *)tickInterval {
	_tickInterval = tickInterval;
	[self updateNSObject:@"tickInterval"];
}

-(void)setMinorTickInterval:(id)minorTickInterval {
	_minorTickInterval = minorTickInterval;
	[self updateNSObject:@"minorTickInterval"];
}

-(void)setCategories:(NSArray<NSString *> *)categories {
	NSArray<NSString *> *oldValue = _categories;
	_categories = categories;
	[self updateArrayObject:oldValue newValue:categories propertyName:@"categories"];
}

-(void)setGridLineColor:(HIColor *)gridLineColor {
	HIColor *oldValue = _gridLineColor;
	if(self.gridLineColor) {
		[self removeObserver:self forKeyPath:@"gridLineColor.isUpdated"];
	}
	_gridLineColor = gridLineColor;
	[self updateHIObject:oldValue newValue:gridLineColor propertyName:@"gridLineColor"];
}

-(void)setReversedStacks:(NSNumber *)reversedStacks {
	_reversedStacks = reversedStacks;
	[self updateNSObject:@"reversedStacks"];
}

-(void)setLinkedTo:(NSNumber *)linkedTo {
	_linkedTo = linkedTo;
	[self updateNSObject:@"linkedTo"];
}

-(void)setMinorGridLineWidth:(NSNumber *)minorGridLineWidth {
	_minorGridLineWidth = minorGridLineWidth;
	[self updateNSObject:@"minorGridLineWidth"];
}

-(void)setShowLastLabel:(NSNumber *)showLastLabel {
	_showLastLabel = showLastLabel;
	[self updateNSObject:@"showLastLabel"];
}

-(void)setMinorTickColor:(HIColor *)minorTickColor {
	HIColor *oldValue = _minorTickColor;
	if(self.minorTickColor) {
		[self removeObserver:self forKeyPath:@"minorTickColor.isUpdated"];
	}
	_minorTickColor = minorTickColor;
	[self updateHIObject:oldValue newValue:minorTickColor propertyName:@"minorTickColor"];
}

-(void)setUniqueNames:(NSNumber *)uniqueNames {
	_uniqueNames = uniqueNames;
	[self updateNSObject:@"uniqueNames"];
}

-(void)setMaxPadding:(NSNumber *)maxPadding {
	_maxPadding = maxPadding;
	[self updateNSObject:@"maxPadding"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setTickAmount:(NSNumber *)tickAmount {
	_tickAmount = tickAmount;
	[self updateNSObject:@"tickAmount"];
}

-(void)setTickLength:(NSNumber *)tickLength {
	_tickLength = tickLength;
	[self updateNSObject:@"tickLength"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setAlternateGridColor:(HIColor *)alternateGridColor {
	HIColor *oldValue = _alternateGridColor;
	if(self.alternateGridColor) {
		[self removeObserver:self forKeyPath:@"alternateGridColor.isUpdated"];
	}
	_alternateGridColor = alternateGridColor;
	[self updateHIObject:oldValue newValue:alternateGridColor propertyName:@"alternateGridColor"];
}

-(void)setTitle:(HITitle *)title {
	HITitle *oldValue = _title;
	if(self.title) {
		[self removeObserver:self forKeyPath:@"title.isUpdated"];
	}
	_title = title;
	[self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setTickPosition:(NSString *)tickPosition {
	_tickPosition = tickPosition;
	[self updateNSObject:@"tickPosition"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

-(void)setSoftMax:(NSNumber *)softMax {
	_softMax = softMax;
	[self updateNSObject:@"softMax"];
}

@end