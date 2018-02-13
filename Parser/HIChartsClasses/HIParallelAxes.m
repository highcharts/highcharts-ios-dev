#import "HIChartsJSONSerializableSubclass.h"
#import "HIParallelAxes.h"

@implementation HIParallelAxes

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.title) {
		params[@"title"] = self.title;
	}
	if (self.minPadding) {
		params[@"minPadding"] = self.minPadding;
	}
	if (self.softMax) {
		params[@"softMax"] = self.softMax;
	}
	if (self.startOnTick) {
		params[@"startOnTick"] = self.startOnTick;
	}
	if (self.endOnTick) {
		params[@"endOnTick"] = self.endOnTick;
	}
	if (self.softMin) {
		params[@"softMin"] = self.softMin;
	}
	if (self.tickPixelInterval) {
		params[@"tickPixelInterval"] = self.tickPixelInterval;
	}
	if (self.tickWidth) {
		params[@"tickWidth"] = self.tickWidth;
	}
	if (self.opposite) {
		params[@"opposite"] = self.opposite;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.tooltipValueFormat) {
		params[@"tooltipValueFormat"] = self.tooltipValueFormat;
	}
	if (self.reversedStacks) {
		params[@"reversedStacks"] = self.reversedStacks;
	}
	if (self.showLastLabel) {
		params[@"showLastLabel"] = self.showLastLabel;
	}
	if (self.min) {
		params[@"min"] = self.min;
	}
	if (self.maxPadding) {
		params[@"maxPadding"] = self.maxPadding;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
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
	if (self.pane) {
		params[@"pane"] = self.pane;
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
	if (self.minRange) {
		params[@"minRange"] = self.minRange;
	}
	if (self.tickmarkPlacement) {
		params[@"tickmarkPlacement"] = self.tickmarkPlacement;
	}
	if (self.allowDecimals) {
		params[@"allowDecimals"] = self.allowDecimals;
	}
	if (self.tickPositioner) {
		params[@"tickPositioner"] = [self.tickPositioner getFunction];
	}
	if (self.minorTickLength) {
		params[@"minorTickLength"] = self.minorTickLength;
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
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.minorTickPosition) {
		params[@"minorTickPosition"] = self.minorTickPosition;
	}
	if (self.showEmpty) {
		params[@"showEmpty"] = self.showEmpty;
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
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.minorTickColor) {
		params[@"minorTickColor"] = [self.minorTickColor getData];
	}
	if (self.uniqueNames) {
		params[@"uniqueNames"] = self.uniqueNames;
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
	if (self.tickPosition) {
		params[@"tickPosition"] = self.tickPosition;
	}
	return params;
}

# pragma mark - Setters

-(void)setLabels:(HILabels *)labels {
	HILabels *oldValue = _labels;
	if(self.labels) {
		[self removeObserver:self forKeyPath:@"labels.isUpdated"];
	}
	_labels = labels;
	[self updateHIObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

-(void)setOffset:(NSNumber *)offset {
	_offset = offset;
	[self updateNSObject:@"offset"];
}

-(void)setTitle:(id)title {
	_title = title;
	[self updateNSObject:@"title"];
}

-(void)setMinPadding:(NSNumber *)minPadding {
	_minPadding = minPadding;
	[self updateNSObject:@"minPadding"];
}

-(void)setSoftMax:(NSNumber *)softMax {
	_softMax = softMax;
	[self updateNSObject:@"softMax"];
}

-(void)setStartOnTick:(NSNumber *)startOnTick {
	_startOnTick = startOnTick;
	[self updateNSObject:@"startOnTick"];
}

-(void)setEndOnTick:(NSNumber *)endOnTick {
	_endOnTick = endOnTick;
	[self updateNSObject:@"endOnTick"];
}

-(void)setSoftMin:(NSNumber *)softMin {
	_softMin = softMin;
	[self updateNSObject:@"softMin"];
}

-(void)setTickPixelInterval:(NSNumber *)tickPixelInterval {
	_tickPixelInterval = tickPixelInterval;
	[self updateNSObject:@"tickPixelInterval"];
}

-(void)setTickWidth:(NSNumber *)tickWidth {
	_tickWidth = tickWidth;
	[self updateNSObject:@"tickWidth"];
}

-(void)setOpposite:(NSNumber *)opposite {
	_opposite = opposite;
	[self updateNSObject:@"opposite"];
}

-(void)setMax:(NSNumber *)max {
	_max = max;
	[self updateNSObject:@"max"];
}

-(void)setTooltipValueFormat:(NSString *)tooltipValueFormat {
	_tooltipValueFormat = tooltipValueFormat;
	[self updateNSObject:@"tooltipValueFormat"];
}

-(void)setReversedStacks:(NSNumber *)reversedStacks {
	_reversedStacks = reversedStacks;
	[self updateNSObject:@"reversedStacks"];
}

-(void)setShowLastLabel:(NSNumber *)showLastLabel {
	_showLastLabel = showLastLabel;
	[self updateNSObject:@"showLastLabel"];
}

-(void)setMin:(NSNumber *)min {
	_min = min;
	[self updateNSObject:@"min"];
}

-(void)setMaxPadding:(NSNumber *)maxPadding {
	_maxPadding = maxPadding;
	[self updateNSObject:@"maxPadding"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
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

-(void)setPane:(NSNumber *)pane {
	_pane = pane;
	[self updateNSObject:@"pane"];
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

-(void)setTickPositions:(NSArray<NSNumber *> *)tickPositions {
	NSArray<NSNumber *> *oldValue = _tickPositions;
	_tickPositions = tickPositions;
	[self updateArrayObject:oldValue newValue:tickPositions propertyName:@"tickPositions"];
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

-(void)setTickPositioner:(HIFunction *)tickPositioner {
	HIFunction *oldValue = _tickPositioner;
	if(self.tickPositioner) {
		[self removeObserver:self forKeyPath:@"tickPositioner.isUpdated"];
	}
	_tickPositioner = tickPositioner;
	[self updateHIObject:oldValue newValue:tickPositioner propertyName:@"tickPositioner"];
}

-(void)setMinorTickLength:(NSNumber *)minorTickLength {
	_minorTickLength = minorTickLength;
	[self updateNSObject:@"minorTickLength"];
}

-(void)setUnits:(NSArray *)units {
	NSArray *oldValue = _units;
	_units = units;
	[self updateArrayObject:oldValue newValue:units propertyName:@"units"];
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

-(void)setDefinition:(NSString *)definition {
	_definition = definition;
	[self updateNSObject:@"definition"];
}

-(void)setMinorTickPosition:(NSString *)minorTickPosition {
	_minorTickPosition = minorTickPosition;
	[self updateNSObject:@"minorTickPosition"];
}

-(void)setShowEmpty:(NSNumber *)showEmpty {
	_showEmpty = showEmpty;
	[self updateNSObject:@"showEmpty"];
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

-(void)setLinkedTo:(NSNumber *)linkedTo {
	_linkedTo = linkedTo;
	[self updateNSObject:@"linkedTo"];
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

-(void)setTickPosition:(NSString *)tickPosition {
	_tickPosition = tickPosition;
	[self updateNSObject:@"tickPosition"];
}

@end