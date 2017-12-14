#import "HIYAxis.h"

@implementation HIYAxis

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.startOfWeek) {
		params[@"startOfWeek"] = self.startOfWeek;
	}
	if (self.floor) {
		params[@"floor"] = self.floor;
	}
	if (self.minorTickColor) {
		params[@"minorTickColor"] = [self.minorTickColor getData];
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.tickPosition) {
		params[@"tickPosition"] = self.tickPosition;
	}
	if (self.uniqueNames) {
		params[@"uniqueNames"] = self.uniqueNames;
	}
	if (self.tickColor) {
		params[@"tickColor"] = [self.tickColor getData];
	}
	if (self.gridLineInterpolation) {
		params[@"gridLineInterpolation"] = self.gridLineInterpolation;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.min) {
		params[@"min"] = self.min;
	}
	if (self.tickmarkPlacement) {
		params[@"tickmarkPlacement"] = self.tickmarkPlacement;
	}
	if (self.tickPixelInterval) {
		params[@"tickPixelInterval"] = self.tickPixelInterval;
	}
	if (self.crosshair) {
		params[@"crosshair"] = [self.crosshair getParams];
	}
	if (self.minColor) {
		params[@"minColor"] = [self.minColor getData];
	}
	if (self.tickInterval) {
		params[@"tickInterval"] = self.tickInterval;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.gridZIndex) {
		params[@"gridZIndex"] = self.gridZIndex;
	}
	if (self.showEmpty) {
		params[@"showEmpty"] = self.showEmpty;
	}
	if (self.maxColor) {
		params[@"maxColor"] = [self.maxColor getData];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.showLastLabel) {
		params[@"showLastLabel"] = self.showLastLabel;
	}
	if (self.minorGridLineDashStyle) {
		params[@"minorGridLineDashStyle"] = self.minorGridLineDashStyle;
	}
	if (self.startOnTick) {
		params[@"startOnTick"] = self.startOnTick;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.tooltipValueFormat) {
		params[@"tooltipValueFormat"] = self.tooltipValueFormat;
	}
	if (self.minRange) {
		params[@"minRange"] = self.minRange;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.reversedStacks) {
		params[@"reversedStacks"] = self.reversedStacks;
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
	if (self.minTickInterval) {
		params[@"minTickInterval"] = self.minTickInterval;
	}
	if (self.minorGridLineWidth) {
		params[@"minorGridLineWidth"] = self.minorGridLineWidth;
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
	if (self.minorTickPosition) {
		params[@"minorTickPosition"] = self.minorTickPosition;
	}
	if (self.endOnTick) {
		params[@"endOnTick"] = self.endOnTick;
	}
	if (self.minorTickWidth) {
		params[@"minorTickWidth"] = self.minorTickWidth;
	}
	if (self.tickLength) {
		params[@"tickLength"] = self.tickLength;
	}
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.minorGridLineColor) {
		params[@"minorGridLineColor"] = [self.minorGridLineColor getData];
	}
	if (self.tickWidth) {
		params[@"tickWidth"] = self.tickWidth;
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
	if (self.angle) {
		params[@"angle"] = self.angle;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.maxPadding) {
		params[@"maxPadding"] = self.maxPadding;
	}
	if (self.gridLineWidth) {
		params[@"gridLineWidth"] = self.gridLineWidth;
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
	if (self.ceiling) {
		params[@"ceiling"] = self.ceiling;
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
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
	if (self.gridLineDashStyle) {
		params[@"gridLineDashStyle"] = self.gridLineDashStyle;
	}
	if (self.stackLabels) {
		params[@"stackLabels"] = [self.stackLabels getParams];
	}
	if (self.minPadding) {
		params[@"minPadding"] = self.minPadding;
	}
	if (self.allowDecimals) {
		params[@"allowDecimals"] = self.allowDecimals;
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
	if (self.tickAmount) {
		params[@"tickAmount"] = self.tickAmount;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.minorTickLength) {
		params[@"minorTickLength"] = self.minorTickLength;
	}
	if (self.stops) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.stops) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"stops"] = array;
	}
	if (self.alternateGridColor) {
		params[@"alternateGridColor"] = [self.alternateGridColor getData];
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = [self.dateTimeLabelFormats getParams];
	}
	if (self.minorTickInterval) {
		params[@"minorTickInterval"] = self.minorTickInterval;
	}
	if (self.gridLineColor) {
		params[@"gridLineColor"] = [self.gridLineColor getData];
	}
	if (self.showFirstLabel) {
		params[@"showFirstLabel"] = self.showFirstLabel;
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.minorTicks) {
		params[@"minorTicks"] = self.minorTicks;
	}
	if (self.opposite) {
		params[@"opposite"] = self.opposite;
	}
	if (self.maxZoom) {
		params[@"maxZoom"] = self.maxZoom;
	}
	if (self.tickPositioner) {
		params[@"tickPositioner"] = [self.tickPositioner getFunction];
	}
	return params;
}

# pragma mark - Setters

-(void)setStartOfWeek:(NSNumber *)startOfWeek {
	_startOfWeek = startOfWeek;
	[self updateNSObject:@"startOfWeek"];
}

-(void)setFloor:(NSNumber *)floor {
	_floor = floor;
	[self updateNSObject:@"floor"];
}

-(void)setMinorTickColor:(HIColor *)minorTickColor {
	HIColor *oldValue = _minorTickColor;
	if(self.minorTickColor) {
		[self removeObserver:self forKeyPath:@"minorTickColor.isUpdated"];
	}
	_minorTickColor = minorTickColor;
	[self updateHIObject:oldValue newValue:minorTickColor propertyName:@"minorTickColor"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

-(void)setTickPosition:(NSString *)tickPosition {
	_tickPosition = tickPosition;
	[self updateNSObject:@"tickPosition"];
}

-(void)setUniqueNames:(NSNumber *)uniqueNames {
	_uniqueNames = uniqueNames;
	[self updateNSObject:@"uniqueNames"];
}

-(void)setTickColor:(HIColor *)tickColor {
	HIColor *oldValue = _tickColor;
	if(self.tickColor) {
		[self removeObserver:self forKeyPath:@"tickColor.isUpdated"];
	}
	_tickColor = tickColor;
	[self updateHIObject:oldValue newValue:tickColor propertyName:@"tickColor"];
}

-(void)setGridLineInterpolation:(NSString *)gridLineInterpolation {
	_gridLineInterpolation = gridLineInterpolation;
	[self updateNSObject:@"gridLineInterpolation"];
}

-(void)setMax:(NSNumber *)max {
	_max = max;
	[self updateNSObject:@"max"];
}

-(void)setMin:(NSNumber *)min {
	_min = min;
	[self updateNSObject:@"min"];
}

-(void)setTickmarkPlacement:(NSString *)tickmarkPlacement {
	_tickmarkPlacement = tickmarkPlacement;
	[self updateNSObject:@"tickmarkPlacement"];
}

-(void)setTickPixelInterval:(NSNumber *)tickPixelInterval {
	_tickPixelInterval = tickPixelInterval;
	[self updateNSObject:@"tickPixelInterval"];
}

-(void)setCrosshair:(HICrosshair *)crosshair {
	HICrosshair *oldValue = _crosshair;
	if(self.crosshair) {
		[self removeObserver:self forKeyPath:@"crosshair.isUpdated"];
	}
	_crosshair = crosshair;
	[self updateHIObject:oldValue newValue:crosshair propertyName:@"crosshair"];
}

-(void)setMinColor:(HIColor *)minColor {
	HIColor *oldValue = _minColor;
	if(self.minColor) {
		[self removeObserver:self forKeyPath:@"minColor.isUpdated"];
	}
	_minColor = minColor;
	[self updateHIObject:oldValue newValue:minColor propertyName:@"minColor"];
}

-(void)setTickInterval:(NSNumber *)tickInterval {
	_tickInterval = tickInterval;
	[self updateNSObject:@"tickInterval"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	if(self.lineColor) {
		[self removeObserver:self forKeyPath:@"lineColor.isUpdated"];
	}
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	if(self.events) {
		[self removeObserver:self forKeyPath:@"events.isUpdated"];
	}
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setGridZIndex:(NSNumber *)gridZIndex {
	_gridZIndex = gridZIndex;
	[self updateNSObject:@"gridZIndex"];
}

-(void)setShowEmpty:(NSNumber *)showEmpty {
	_showEmpty = showEmpty;
	[self updateNSObject:@"showEmpty"];
}

-(void)setMaxColor:(HIColor *)maxColor {
	HIColor *oldValue = _maxColor;
	if(self.maxColor) {
		[self removeObserver:self forKeyPath:@"maxColor.isUpdated"];
	}
	_maxColor = maxColor;
	[self updateHIObject:oldValue newValue:maxColor propertyName:@"maxColor"];
}

-(void)setId:(NSString *)id {
	_id = id;
	[self updateNSObject:@"id"];
}

-(void)setShowLastLabel:(NSNumber *)showLastLabel {
	_showLastLabel = showLastLabel;
	[self updateNSObject:@"showLastLabel"];
}

-(void)setMinorGridLineDashStyle:(NSString *)minorGridLineDashStyle {
	_minorGridLineDashStyle = minorGridLineDashStyle;
	[self updateNSObject:@"minorGridLineDashStyle"];
}

-(void)setStartOnTick:(NSNumber *)startOnTick {
	_startOnTick = startOnTick;
	[self updateNSObject:@"startOnTick"];
}

-(void)setOffset:(NSNumber *)offset {
	_offset = offset;
	[self updateNSObject:@"offset"];
}

-(void)setTooltipValueFormat:(NSString *)tooltipValueFormat {
	_tooltipValueFormat = tooltipValueFormat;
	[self updateNSObject:@"tooltipValueFormat"];
}

-(void)setMinRange:(NSNumber *)minRange {
	_minRange = minRange;
	[self updateNSObject:@"minRange"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setReversedStacks:(NSNumber *)reversedStacks {
	_reversedStacks = reversedStacks;
	[self updateNSObject:@"reversedStacks"];
}

-(void)setCategories:(NSArray<NSString *> *)categories {
	NSArray<NSString *> *oldValue = _categories;
	_categories = categories;
	[self updateArrayObject:oldValue newValue:categories propertyName:@"categories"];
}

-(void)setMinTickInterval:(NSNumber *)minTickInterval {
	_minTickInterval = minTickInterval;
	[self updateNSObject:@"minTickInterval"];
}

-(void)setMinorGridLineWidth:(NSNumber *)minorGridLineWidth {
	_minorGridLineWidth = minorGridLineWidth;
	[self updateNSObject:@"minorGridLineWidth"];
}

-(void)setBreaks:(NSArray <HIBreaks *> *)breaks {
	NSArray <HIBreaks *> *oldValue = _breaks;
	_breaks = breaks;
	[self updateArrayObject:oldValue newValue:breaks propertyName:@"breaks"];
}

-(void)setMinorTickPosition:(NSString *)minorTickPosition {
	_minorTickPosition = minorTickPosition;
	[self updateNSObject:@"minorTickPosition"];
}

-(void)setEndOnTick:(NSNumber *)endOnTick {
	_endOnTick = endOnTick;
	[self updateNSObject:@"endOnTick"];
}

-(void)setMinorTickWidth:(NSNumber *)minorTickWidth {
	_minorTickWidth = minorTickWidth;
	[self updateNSObject:@"minorTickWidth"];
}

-(void)setTickLength:(NSNumber *)tickLength {
	_tickLength = tickLength;
	[self updateNSObject:@"tickLength"];
}

-(void)setLabels:(HILabels *)labels {
	HILabels *oldValue = _labels;
	if(self.labels) {
		[self removeObserver:self forKeyPath:@"labels.isUpdated"];
	}
	_labels = labels;
	[self updateHIObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setDefinition:(NSString *)definition {
	_definition = definition;
	[self updateNSObject:@"definition"];
}

-(void)setMinorGridLineColor:(HIColor *)minorGridLineColor {
	HIColor *oldValue = _minorGridLineColor;
	if(self.minorGridLineColor) {
		[self removeObserver:self forKeyPath:@"minorGridLineColor.isUpdated"];
	}
	_minorGridLineColor = minorGridLineColor;
	[self updateHIObject:oldValue newValue:minorGridLineColor propertyName:@"minorGridLineColor"];
}

-(void)setTickWidth:(NSNumber *)tickWidth {
	_tickWidth = tickWidth;
	[self updateNSObject:@"tickWidth"];
}

-(void)setPlotLines:(NSArray <HIPlotLines *> *)plotLines {
	NSArray <HIPlotLines *> *oldValue = _plotLines;
	_plotLines = plotLines;
	[self updateArrayObject:oldValue newValue:plotLines propertyName:@"plotLines"];
}

-(void)setAngle:(NSNumber *)angle {
	_angle = angle;
	[self updateNSObject:@"angle"];
}

-(void)setLinkedTo:(NSNumber *)linkedTo {
	_linkedTo = linkedTo;
	[self updateNSObject:@"linkedTo"];
}

-(void)setMaxPadding:(NSNumber *)maxPadding {
	_maxPadding = maxPadding;
	[self updateNSObject:@"maxPadding"];
}

-(void)setGridLineWidth:(NSNumber *)gridLineWidth {
	_gridLineWidth = gridLineWidth;
	[self updateNSObject:@"gridLineWidth"];
}

-(void)setPlotBands:(NSArray <HIPlotBands *> *)plotBands {
	NSArray <HIPlotBands *> *oldValue = _plotBands;
	_plotBands = plotBands;
	[self updateArrayObject:oldValue newValue:plotBands propertyName:@"plotBands"];
}

-(void)setCeiling:(NSNumber *)ceiling {
	_ceiling = ceiling;
	[self updateNSObject:@"ceiling"];
}

-(void)setVisible:(NSNumber *)visible {
	_visible = visible;
	[self updateNSObject:@"visible"];
}

-(void)setTickPositions:(NSArray<NSNumber *> *)tickPositions {
	NSArray<NSNumber *> *oldValue = _tickPositions;
	_tickPositions = tickPositions;
	[self updateArrayObject:oldValue newValue:tickPositions propertyName:@"tickPositions"];
}

-(void)setGridLineDashStyle:(NSString *)gridLineDashStyle {
	_gridLineDashStyle = gridLineDashStyle;
	[self updateNSObject:@"gridLineDashStyle"];
}

-(void)setStackLabels:(HIStackLabels *)stackLabels {
	HIStackLabels *oldValue = _stackLabels;
	if(self.stackLabels) {
		[self removeObserver:self forKeyPath:@"stackLabels.isUpdated"];
	}
	_stackLabels = stackLabels;
	[self updateHIObject:oldValue newValue:stackLabels propertyName:@"stackLabels"];
}

-(void)setMinPadding:(NSNumber *)minPadding {
	_minPadding = minPadding;
	[self updateNSObject:@"minPadding"];
}

-(void)setAllowDecimals:(NSNumber *)allowDecimals {
	_allowDecimals = allowDecimals;
	[self updateNSObject:@"allowDecimals"];
}

-(void)setUnits:(NSArray *)units {
	NSArray *oldValue = _units;
	_units = units;
	[self updateArrayObject:oldValue newValue:units propertyName:@"units"];
}

-(void)setTickAmount:(NSNumber *)tickAmount {
	_tickAmount = tickAmount;
	[self updateNSObject:@"tickAmount"];
}

-(void)setReversed:(NSNumber *)reversed {
	_reversed = reversed;
	[self updateNSObject:@"reversed"];
}

-(void)setMinorTickLength:(NSNumber *)minorTickLength {
	_minorTickLength = minorTickLength;
	[self updateNSObject:@"minorTickLength"];
}

-(void)setStops:(NSArray<NSArray *> *)stops {
	NSArray<NSArray *> *oldValue = _stops;
	_stops = stops;
	[self updateArrayObject:oldValue newValue:stops propertyName:@"stops"];
}

-(void)setAlternateGridColor:(HIColor *)alternateGridColor {
	HIColor *oldValue = _alternateGridColor;
	if(self.alternateGridColor) {
		[self removeObserver:self forKeyPath:@"alternateGridColor.isUpdated"];
	}
	_alternateGridColor = alternateGridColor;
	[self updateHIObject:oldValue newValue:alternateGridColor propertyName:@"alternateGridColor"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

-(void)setDateTimeLabelFormats:(HIDateTimeLabelFormats *)dateTimeLabelFormats {
	HIDateTimeLabelFormats *oldValue = _dateTimeLabelFormats;
	if(self.dateTimeLabelFormats) {
		[self removeObserver:self forKeyPath:@"dateTimeLabelFormats.isUpdated"];
	}
	_dateTimeLabelFormats = dateTimeLabelFormats;
	[self updateHIObject:oldValue newValue:dateTimeLabelFormats propertyName:@"dateTimeLabelFormats"];
}

-(void)setMinorTickInterval:(NSNumber *)minorTickInterval {
	_minorTickInterval = minorTickInterval;
	[self updateNSObject:@"minorTickInterval"];
}

-(void)setGridLineColor:(HIColor *)gridLineColor {
	HIColor *oldValue = _gridLineColor;
	if(self.gridLineColor) {
		[self removeObserver:self forKeyPath:@"gridLineColor.isUpdated"];
	}
	_gridLineColor = gridLineColor;
	[self updateHIObject:oldValue newValue:gridLineColor propertyName:@"gridLineColor"];
}

-(void)setShowFirstLabel:(NSNumber *)showFirstLabel {
	_showFirstLabel = showFirstLabel;
	[self updateNSObject:@"showFirstLabel"];
}

-(void)setTitle:(HITitle *)title {
	HITitle *oldValue = _title;
	if(self.title) {
		[self removeObserver:self forKeyPath:@"title.isUpdated"];
	}
	_title = title;
	[self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setMinorTicks:(NSNumber *)minorTicks {
	_minorTicks = minorTicks;
	[self updateNSObject:@"minorTicks"];
}

-(void)setOpposite:(NSNumber *)opposite {
	_opposite = opposite;
	[self updateNSObject:@"opposite"];
}

-(void)setMaxZoom:(NSNumber *)maxZoom {
	_maxZoom = maxZoom;
	[self updateNSObject:@"maxZoom"];
}

-(void)setTickPositioner:(HIFunction *)tickPositioner {
	HIFunction *oldValue = _tickPositioner;
	if(self.tickPositioner) {
		[self removeObserver:self forKeyPath:@"tickPositioner.isUpdated"];
	}
	_tickPositioner = tickPositioner;
	[self updateHIObject:oldValue newValue:tickPositioner propertyName:@"tickPositioner"];
}

@end