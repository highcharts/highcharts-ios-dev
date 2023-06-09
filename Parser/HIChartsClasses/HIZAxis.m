#import "HIChartsJSONSerializableSubclass.h"
#import "HIZAxis.h"

@implementation HIZAxis

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIZAxis *copyZAxis = [[HIZAxis allocWithZone: zone] init];
	copyZAxis.labels = [self.labels copyWithZone: zone];
	copyZAxis.gridZIndex = [self.gridZIndex copyWithZone: zone];
	copyZAxis.pane = [self.pane copyWithZone: zone];
	copyZAxis.title = [self.title copyWithZone: zone];
	copyZAxis.panningEnabled = [self.panningEnabled copyWithZone: zone];
	copyZAxis.tickPixelInterval = [self.tickPixelInterval copyWithZone: zone];
	copyZAxis.tickInterval = [self.tickInterval copyWithZone: zone];
	copyZAxis.categories = [self.categories copyWithZone: zone];
	copyZAxis.showLastLabel = [self.showLastLabel copyWithZone: zone];
	copyZAxis.min = [self.min copyWithZone: zone];
	copyZAxis.crossing = [self.crossing copyWithZone: zone];
	copyZAxis.tickPosition = [self.tickPosition copyWithZone: zone];
	copyZAxis.startOfWeek = [self.startOfWeek copyWithZone: zone];
	copyZAxis.minorGridLineColor = [self.minorGridLineColor copyWithZone: zone];
	copyZAxis.endOnTick = [self.endOnTick copyWithZone: zone];
	copyZAxis.plotLines = [self.plotLines copyWithZone: zone];
	copyZAxis.gridLineInterpolation = [self.gridLineInterpolation copyWithZone: zone];
	copyZAxis.gridLineDashStyle = [self.gridLineDashStyle copyWithZone: zone];
	copyZAxis.minorTickPosition = [self.minorTickPosition copyWithZone: zone];
	copyZAxis.minorTicks = [self.minorTicks copyWithZone: zone];
	copyZAxis.minorTickWidth = [self.minorTickWidth copyWithZone: zone];
	copyZAxis.offset = [self.offset copyWithZone: zone];
	copyZAxis.minTickInterval = [self.minTickInterval copyWithZone: zone];
	copyZAxis.minorTickInterval = [self.minorTickInterval copyWithZone: zone];
	copyZAxis.linkedTo = [self.linkedTo copyWithZone: zone];
	copyZAxis.dateTimeLabelFormats = [self.dateTimeLabelFormats copyWithZone: zone];
	copyZAxis.visible = [self.visible copyWithZone: zone];
	copyZAxis.showFirstLabel = [self.showFirstLabel copyWithZone: zone];
	copyZAxis.tickmarkPlacement = [self.tickmarkPlacement copyWithZone: zone];
	copyZAxis.tickPositioner = [self.tickPositioner copyWithZone: zone];
	copyZAxis.minorTickLength = [self.minorTickLength copyWithZone: zone];
	copyZAxis.type = [self.type copyWithZone: zone];
	copyZAxis.ceiling = [self.ceiling copyWithZone: zone];
	copyZAxis.tickWidth = [self.tickWidth copyWithZone: zone];
	copyZAxis.reversed = [self.reversed copyWithZone: zone];
	copyZAxis.gridLineWidth = [self.gridLineWidth copyWithZone: zone];
	copyZAxis.alternateGridColor = [self.alternateGridColor copyWithZone: zone];
	copyZAxis.minorTickColor = [self.minorTickColor copyWithZone: zone];
	copyZAxis.maxPadding = [self.maxPadding copyWithZone: zone];
	copyZAxis.className = [self.className copyWithZone: zone];
	copyZAxis.margin = [self.margin copyWithZone: zone];
	copyZAxis.softMax = [self.softMax copyWithZone: zone];
	copyZAxis.minPadding = [self.minPadding copyWithZone: zone];
	copyZAxis.accessibility = [self.accessibility copyWithZone: zone];
	copyZAxis.alignTicks = [self.alignTicks copyWithZone: zone];
	copyZAxis.zoomEnabled = [self.zoomEnabled copyWithZone: zone];
	copyZAxis.id = [self.id copyWithZone: zone];
	copyZAxis.minRange = [self.minRange copyWithZone: zone];
	copyZAxis.angle = [self.angle copyWithZone: zone];
	copyZAxis.allowDecimals = [self.allowDecimals copyWithZone: zone];
	copyZAxis.floor = [self.floor copyWithZone: zone];
	copyZAxis.tickPositions = [self.tickPositions copyWithZone: zone];
	copyZAxis.plotBands = [self.plotBands copyWithZone: zone];
	copyZAxis.units = [self.units copyWithZone: zone];
	copyZAxis.softMin = [self.softMin copyWithZone: zone];
	copyZAxis.events = [self.events copyWithZone: zone];
	copyZAxis.tickLength = [self.tickLength copyWithZone: zone];
	copyZAxis.opposite = [self.opposite copyWithZone: zone];
	copyZAxis.max = [self.max copyWithZone: zone];
	copyZAxis.minorGridLineDashStyle = [self.minorGridLineDashStyle copyWithZone: zone];
	copyZAxis.zIndex = [self.zIndex copyWithZone: zone];
	copyZAxis.tickColor = [self.tickColor copyWithZone: zone];
	copyZAxis.gridLineColor = [self.gridLineColor copyWithZone: zone];
	copyZAxis.minorGridLineWidth = [self.minorGridLineWidth copyWithZone: zone];
	copyZAxis.startOnTick = [self.startOnTick copyWithZone: zone];
	copyZAxis.uniqueNames = [self.uniqueNames copyWithZone: zone];
	copyZAxis.tickAmount = [self.tickAmount copyWithZone: zone];
	copyZAxis.minorTicksPerMajor = [self.minorTicksPerMajor copyWithZone: zone];
	copyZAxis.reversedStacks = [self.reversedStacks copyWithZone: zone];
	return copyZAxis;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	params[@"_wrapperID"] = self.uuid;
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.gridZIndex) {
		params[@"gridZIndex"] = self.gridZIndex;
	}
	if (self.pane) {
		params[@"pane"] = self.pane;
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.panningEnabled) {
		params[@"panningEnabled"] = self.panningEnabled;
	}
	if (self.tickPixelInterval) {
		params[@"tickPixelInterval"] = self.tickPixelInterval;
	}
	if (self.tickInterval) {
		params[@"tickInterval"] = self.tickInterval;
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
	if (self.showLastLabel) {
		params[@"showLastLabel"] = self.showLastLabel;
	}
	if (self.min) {
		params[@"min"] = self.min;
	}
	if (self.crossing) {
		params[@"crossing"] = self.crossing;
	}
	if (self.tickPosition) {
		params[@"tickPosition"] = self.tickPosition;
	}
	if (self.startOfWeek) {
		params[@"startOfWeek"] = self.startOfWeek;
	}
	if (self.minorGridLineColor) {
		params[@"minorGridLineColor"] = [self.minorGridLineColor getData];
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
	if (self.gridLineInterpolation) {
		params[@"gridLineInterpolation"] = self.gridLineInterpolation;
	}
	if (self.gridLineDashStyle) {
		params[@"gridLineDashStyle"] = self.gridLineDashStyle;
	}
	if (self.minorTickPosition) {
		params[@"minorTickPosition"] = self.minorTickPosition;
	}
	if (self.minorTicks) {
		params[@"minorTicks"] = self.minorTicks;
	}
	if (self.minorTickWidth) {
		params[@"minorTickWidth"] = self.minorTickWidth;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.minTickInterval) {
		params[@"minTickInterval"] = self.minTickInterval;
	}
	if (self.minorTickInterval) {
		params[@"minorTickInterval"] = self.minorTickInterval;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = [self.dateTimeLabelFormats getParams];
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.showFirstLabel) {
		params[@"showFirstLabel"] = self.showFirstLabel;
	}
	if (self.tickmarkPlacement) {
		params[@"tickmarkPlacement"] = self.tickmarkPlacement;
	}
	if (self.tickPositioner) {
		params[@"tickPositioner"] = [self.tickPositioner getFunction];
	}
	if (self.minorTickLength) {
		params[@"minorTickLength"] = self.minorTickLength;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.ceiling) {
		params[@"ceiling"] = self.ceiling;
	}
	if (self.tickWidth) {
		params[@"tickWidth"] = self.tickWidth;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.gridLineWidth) {
		params[@"gridLineWidth"] = self.gridLineWidth;
	}
	if (self.alternateGridColor) {
		params[@"alternateGridColor"] = [self.alternateGridColor getData];
	}
	if (self.minorTickColor) {
		params[@"minorTickColor"] = [self.minorTickColor getData];
	}
	if (self.maxPadding) {
		params[@"maxPadding"] = self.maxPadding;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.softMax) {
		params[@"softMax"] = self.softMax;
	}
	if (self.minPadding) {
		params[@"minPadding"] = self.minPadding;
	}
	if (self.accessibility) {
		params[@"accessibility"] = [self.accessibility getParams];
	}
	if (self.alignTicks) {
		params[@"alignTicks"] = self.alignTicks;
	}
	if (self.zoomEnabled) {
		params[@"zoomEnabled"] = self.zoomEnabled;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.minRange) {
		params[@"minRange"] = self.minRange;
	}
	if (self.angle) {
		params[@"angle"] = self.angle;
	}
	if (self.allowDecimals) {
		params[@"allowDecimals"] = self.allowDecimals;
	}
	if (self.floor) {
		params[@"floor"] = self.floor;
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
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.tickLength) {
		params[@"tickLength"] = self.tickLength;
	}
	if (self.opposite) {
		params[@"opposite"] = self.opposite;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.minorGridLineDashStyle) {
		params[@"minorGridLineDashStyle"] = self.minorGridLineDashStyle;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.tickColor) {
		params[@"tickColor"] = [self.tickColor getData];
	}
	if (self.gridLineColor) {
		params[@"gridLineColor"] = [self.gridLineColor getData];
	}
	if (self.minorGridLineWidth) {
		params[@"minorGridLineWidth"] = self.minorGridLineWidth;
	}
	if (self.startOnTick) {
		params[@"startOnTick"] = self.startOnTick;
	}
	if (self.uniqueNames) {
		params[@"uniqueNames"] = self.uniqueNames;
	}
	if (self.tickAmount) {
		params[@"tickAmount"] = self.tickAmount;
	}
	if (self.minorTicksPerMajor) {
		params[@"minorTicksPerMajor"] = self.minorTicksPerMajor;
	}
	if (self.reversedStacks) {
		params[@"reversedStacks"] = self.reversedStacks;
	}
	return params;
}

# pragma mark - Setters

-(void)setLabels:(HILabels *)labels {
	HILabels *oldValue = _labels;
	_labels = labels;
	[self updateHIObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setGridZIndex:(NSNumber *)gridZIndex {
	NSNumber *oldValue = _gridZIndex;
	_gridZIndex = gridZIndex;
	[self updateNSObject:oldValue newValue:gridZIndex propertyName:@"gridZIndex"];
}

-(void)setPane:(NSNumber *)pane {
	NSNumber *oldValue = _pane;
	_pane = pane;
	[self updateNSObject:oldValue newValue:pane propertyName:@"pane"];
}

-(void)setTitle:(HITitle *)title {
	HITitle *oldValue = _title;
	_title = title;
	[self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setPanningEnabled:(NSNumber *)panningEnabled {
	NSNumber *oldValue = _panningEnabled;
	_panningEnabled = panningEnabled;
	[self updateNSObject:oldValue newValue:panningEnabled propertyName:@"panningEnabled"];
}

-(void)setTickPixelInterval:(NSNumber *)tickPixelInterval {
	NSNumber *oldValue = _tickPixelInterval;
	_tickPixelInterval = tickPixelInterval;
	[self updateNSObject:oldValue newValue:tickPixelInterval propertyName:@"tickPixelInterval"];
}

-(void)setTickInterval:(NSNumber *)tickInterval {
	NSNumber *oldValue = _tickInterval;
	_tickInterval = tickInterval;
	[self updateNSObject:oldValue newValue:tickInterval propertyName:@"tickInterval"];
}

-(void)setCategories:(NSArray<NSString *> *)categories {
	NSArray<NSString *> *oldValue = _categories;
	_categories = categories;
	[self updateArrayObject:oldValue newValue:categories propertyName:@"categories"];
}

-(void)setShowLastLabel:(NSNumber *)showLastLabel {
	NSNumber *oldValue = _showLastLabel;
	_showLastLabel = showLastLabel;
	[self updateNSObject:oldValue newValue:showLastLabel propertyName:@"showLastLabel"];
}

-(void)setMin:(NSNumber *)min {
	NSNumber *oldValue = _min;
	_min = min;
	[self updateNSObject:oldValue newValue:min propertyName:@"min"];
}

-(void)setCrossing:(NSNumber *)crossing {
	NSNumber *oldValue = _crossing;
	_crossing = crossing;
	[self updateNSObject:oldValue newValue:crossing propertyName:@"crossing"];
}

-(void)setTickPosition:(NSString *)tickPosition {
	NSString *oldValue = _tickPosition;
	_tickPosition = tickPosition;
	[self updateNSObject:oldValue newValue:tickPosition propertyName:@"tickPosition"];
}

-(void)setStartOfWeek:(NSNumber *)startOfWeek {
	NSNumber *oldValue = _startOfWeek;
	_startOfWeek = startOfWeek;
	[self updateNSObject:oldValue newValue:startOfWeek propertyName:@"startOfWeek"];
}

-(void)setMinorGridLineColor:(HIColor *)minorGridLineColor {
	HIColor *oldValue = _minorGridLineColor;
	_minorGridLineColor = minorGridLineColor;
	[self updateHIObject:oldValue newValue:minorGridLineColor propertyName:@"minorGridLineColor"];
}

-(void)setEndOnTick:(NSNumber *)endOnTick {
	NSNumber *oldValue = _endOnTick;
	_endOnTick = endOnTick;
	[self updateNSObject:oldValue newValue:endOnTick propertyName:@"endOnTick"];
}

-(void)setPlotLines:(NSArray <HIPlotLines *> *)plotLines {
	NSArray <HIPlotLines *> *oldValue = _plotLines;
	_plotLines = plotLines;
	[self updateArrayObject:oldValue newValue:plotLines propertyName:@"plotLines"];
}

-(void)setGridLineInterpolation:(NSString *)gridLineInterpolation {
	NSString *oldValue = _gridLineInterpolation;
	_gridLineInterpolation = gridLineInterpolation;
	[self updateNSObject:oldValue newValue:gridLineInterpolation propertyName:@"gridLineInterpolation"];
}

-(void)setGridLineDashStyle:(NSString *)gridLineDashStyle {
	NSString *oldValue = _gridLineDashStyle;
	_gridLineDashStyle = gridLineDashStyle;
	[self updateNSObject:oldValue newValue:gridLineDashStyle propertyName:@"gridLineDashStyle"];
}

-(void)setMinorTickPosition:(NSString *)minorTickPosition {
	NSString *oldValue = _minorTickPosition;
	_minorTickPosition = minorTickPosition;
	[self updateNSObject:oldValue newValue:minorTickPosition propertyName:@"minorTickPosition"];
}

-(void)setMinorTicks:(NSNumber *)minorTicks {
	NSNumber *oldValue = _minorTicks;
	_minorTicks = minorTicks;
	[self updateNSObject:oldValue newValue:minorTicks propertyName:@"minorTicks"];
}

-(void)setMinorTickWidth:(NSNumber *)minorTickWidth {
	NSNumber *oldValue = _minorTickWidth;
	_minorTickWidth = minorTickWidth;
	[self updateNSObject:oldValue newValue:minorTickWidth propertyName:@"minorTickWidth"];
}

-(void)setOffset:(NSNumber *)offset {
	NSNumber *oldValue = _offset;
	_offset = offset;
	[self updateNSObject:oldValue newValue:offset propertyName:@"offset"];
}

-(void)setMinTickInterval:(NSNumber *)minTickInterval {
	NSNumber *oldValue = _minTickInterval;
	_minTickInterval = minTickInterval;
	[self updateNSObject:oldValue newValue:minTickInterval propertyName:@"minTickInterval"];
}

-(void)setMinorTickInterval:(id)minorTickInterval {
	id oldValue = _minorTickInterval;
	_minorTickInterval = minorTickInterval;
	[self updateNSObject:oldValue newValue:minorTickInterval propertyName:@"minorTickInterval"];
}

-(void)setLinkedTo:(NSNumber *)linkedTo {
	NSNumber *oldValue = _linkedTo;
	_linkedTo = linkedTo;
	[self updateNSObject:oldValue newValue:linkedTo propertyName:@"linkedTo"];
}

-(void)setDateTimeLabelFormats:(HIDateTimeLabelFormats *)dateTimeLabelFormats {
	HIDateTimeLabelFormats *oldValue = _dateTimeLabelFormats;
	_dateTimeLabelFormats = dateTimeLabelFormats;
	[self updateHIObject:oldValue newValue:dateTimeLabelFormats propertyName:@"dateTimeLabelFormats"];
}

-(void)setVisible:(NSNumber *)visible {
	NSNumber *oldValue = _visible;
	_visible = visible;
	[self updateNSObject:oldValue newValue:visible propertyName:@"visible"];
}

-(void)setShowFirstLabel:(NSNumber *)showFirstLabel {
	NSNumber *oldValue = _showFirstLabel;
	_showFirstLabel = showFirstLabel;
	[self updateNSObject:oldValue newValue:showFirstLabel propertyName:@"showFirstLabel"];
}

-(void)setTickmarkPlacement:(NSString *)tickmarkPlacement {
	NSString *oldValue = _tickmarkPlacement;
	_tickmarkPlacement = tickmarkPlacement;
	[self updateNSObject:oldValue newValue:tickmarkPlacement propertyName:@"tickmarkPlacement"];
}

-(void)setTickPositioner:(HIFunction *)tickPositioner {
	HIFunction *oldValue = _tickPositioner;
	_tickPositioner = tickPositioner;
	[self updateHIObject:oldValue newValue:tickPositioner propertyName:@"tickPositioner"];
}

-(void)setMinorTickLength:(NSNumber *)minorTickLength {
	NSNumber *oldValue = _minorTickLength;
	_minorTickLength = minorTickLength;
	[self updateNSObject:oldValue newValue:minorTickLength propertyName:@"minorTickLength"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setCeiling:(NSNumber *)ceiling {
	NSNumber *oldValue = _ceiling;
	_ceiling = ceiling;
	[self updateNSObject:oldValue newValue:ceiling propertyName:@"ceiling"];
}

-(void)setTickWidth:(NSNumber *)tickWidth {
	NSNumber *oldValue = _tickWidth;
	_tickWidth = tickWidth;
	[self updateNSObject:oldValue newValue:tickWidth propertyName:@"tickWidth"];
}

-(void)setReversed:(NSNumber *)reversed {
	NSNumber *oldValue = _reversed;
	_reversed = reversed;
	[self updateNSObject:oldValue newValue:reversed propertyName:@"reversed"];
}

-(void)setGridLineWidth:(NSNumber *)gridLineWidth {
	NSNumber *oldValue = _gridLineWidth;
	_gridLineWidth = gridLineWidth;
	[self updateNSObject:oldValue newValue:gridLineWidth propertyName:@"gridLineWidth"];
}

-(void)setAlternateGridColor:(HIColor *)alternateGridColor {
	HIColor *oldValue = _alternateGridColor;
	_alternateGridColor = alternateGridColor;
	[self updateHIObject:oldValue newValue:alternateGridColor propertyName:@"alternateGridColor"];
}

-(void)setMinorTickColor:(HIColor *)minorTickColor {
	HIColor *oldValue = _minorTickColor;
	_minorTickColor = minorTickColor;
	[self updateHIObject:oldValue newValue:minorTickColor propertyName:@"minorTickColor"];
}

-(void)setMaxPadding:(NSNumber *)maxPadding {
	NSNumber *oldValue = _maxPadding;
	_maxPadding = maxPadding;
	[self updateNSObject:oldValue newValue:maxPadding propertyName:@"maxPadding"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setMargin:(NSNumber *)margin {
	NSNumber *oldValue = _margin;
	_margin = margin;
	[self updateNSObject:oldValue newValue:margin propertyName:@"margin"];
}

-(void)setSoftMax:(NSNumber *)softMax {
	NSNumber *oldValue = _softMax;
	_softMax = softMax;
	[self updateNSObject:oldValue newValue:softMax propertyName:@"softMax"];
}

-(void)setMinPadding:(NSNumber *)minPadding {
	NSNumber *oldValue = _minPadding;
	_minPadding = minPadding;
	[self updateNSObject:oldValue newValue:minPadding propertyName:@"minPadding"];
}

-(void)setAccessibility:(HIAccessibility *)accessibility {
	HIAccessibility *oldValue = _accessibility;
	_accessibility = accessibility;
	[self updateHIObject:oldValue newValue:accessibility propertyName:@"accessibility"];
}

-(void)setAlignTicks:(NSNumber *)alignTicks {
	NSNumber *oldValue = _alignTicks;
	_alignTicks = alignTicks;
	[self updateNSObject:oldValue newValue:alignTicks propertyName:@"alignTicks"];
}

-(void)setZoomEnabled:(NSNumber *)zoomEnabled {
	NSNumber *oldValue = _zoomEnabled;
	_zoomEnabled = zoomEnabled;
	[self updateNSObject:oldValue newValue:zoomEnabled propertyName:@"zoomEnabled"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setMinRange:(NSNumber *)minRange {
	NSNumber *oldValue = _minRange;
	_minRange = minRange;
	[self updateNSObject:oldValue newValue:minRange propertyName:@"minRange"];
}

-(void)setAngle:(NSNumber *)angle {
	NSNumber *oldValue = _angle;
	_angle = angle;
	[self updateNSObject:oldValue newValue:angle propertyName:@"angle"];
}

-(void)setAllowDecimals:(NSNumber *)allowDecimals {
	NSNumber *oldValue = _allowDecimals;
	_allowDecimals = allowDecimals;
	[self updateNSObject:oldValue newValue:allowDecimals propertyName:@"allowDecimals"];
}

-(void)setFloor:(NSNumber *)floor {
	NSNumber *oldValue = _floor;
	_floor = floor;
	[self updateNSObject:oldValue newValue:floor propertyName:@"floor"];
}

-(void)setTickPositions:(NSArray<NSNumber *> *)tickPositions {
	NSArray<NSNumber *> *oldValue = _tickPositions;
	_tickPositions = tickPositions;
	[self updateArrayObject:oldValue newValue:tickPositions propertyName:@"tickPositions"];
}

-(void)setPlotBands:(NSArray <HIPlotBands *> *)plotBands {
	NSArray <HIPlotBands *> *oldValue = _plotBands;
	_plotBands = plotBands;
	[self updateArrayObject:oldValue newValue:plotBands propertyName:@"plotBands"];
}

-(void)setUnits:(NSArray<NSArray *> *)units {
	NSArray<NSArray *> *oldValue = _units;
	_units = units;
	[self updateArrayObject:oldValue newValue:units propertyName:@"units"];
}

-(void)setSoftMin:(NSNumber *)softMin {
	NSNumber *oldValue = _softMin;
	_softMin = softMin;
	[self updateNSObject:oldValue newValue:softMin propertyName:@"softMin"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setTickLength:(NSNumber *)tickLength {
	NSNumber *oldValue = _tickLength;
	_tickLength = tickLength;
	[self updateNSObject:oldValue newValue:tickLength propertyName:@"tickLength"];
}

-(void)setOpposite:(NSNumber *)opposite {
	NSNumber *oldValue = _opposite;
	_opposite = opposite;
	[self updateNSObject:oldValue newValue:opposite propertyName:@"opposite"];
}

-(void)setMax:(NSNumber *)max {
	NSNumber *oldValue = _max;
	_max = max;
	[self updateNSObject:oldValue newValue:max propertyName:@"max"];
}

-(void)setMinorGridLineDashStyle:(NSString *)minorGridLineDashStyle {
	NSString *oldValue = _minorGridLineDashStyle;
	_minorGridLineDashStyle = minorGridLineDashStyle;
	[self updateNSObject:oldValue newValue:minorGridLineDashStyle propertyName:@"minorGridLineDashStyle"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
}

-(void)setTickColor:(HIColor *)tickColor {
	HIColor *oldValue = _tickColor;
	_tickColor = tickColor;
	[self updateHIObject:oldValue newValue:tickColor propertyName:@"tickColor"];
}

-(void)setGridLineColor:(HIColor *)gridLineColor {
	HIColor *oldValue = _gridLineColor;
	_gridLineColor = gridLineColor;
	[self updateHIObject:oldValue newValue:gridLineColor propertyName:@"gridLineColor"];
}

-(void)setMinorGridLineWidth:(NSNumber *)minorGridLineWidth {
	NSNumber *oldValue = _minorGridLineWidth;
	_minorGridLineWidth = minorGridLineWidth;
	[self updateNSObject:oldValue newValue:minorGridLineWidth propertyName:@"minorGridLineWidth"];
}

-(void)setStartOnTick:(NSNumber *)startOnTick {
	NSNumber *oldValue = _startOnTick;
	_startOnTick = startOnTick;
	[self updateNSObject:oldValue newValue:startOnTick propertyName:@"startOnTick"];
}

-(void)setUniqueNames:(NSNumber *)uniqueNames {
	NSNumber *oldValue = _uniqueNames;
	_uniqueNames = uniqueNames;
	[self updateNSObject:oldValue newValue:uniqueNames propertyName:@"uniqueNames"];
}

-(void)setTickAmount:(NSNumber *)tickAmount {
	NSNumber *oldValue = _tickAmount;
	_tickAmount = tickAmount;
	[self updateNSObject:oldValue newValue:tickAmount propertyName:@"tickAmount"];
}

-(void)setMinorTicksPerMajor:(NSNumber *)minorTicksPerMajor {
	NSNumber *oldValue = _minorTicksPerMajor;
	_minorTicksPerMajor = minorTicksPerMajor;
	[self updateNSObject:oldValue newValue:minorTicksPerMajor propertyName:@"minorTicksPerMajor"];
}

-(void)setReversedStacks:(NSNumber *)reversedStacks {
	NSNumber *oldValue = _reversedStacks;
	_reversedStacks = reversedStacks;
	[self updateNSObject:oldValue newValue:reversedStacks propertyName:@"reversedStacks"];
}

- (void)addPlotBand:(HIPlotBands *)options {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"addPlotBand", @"id" : self.uuid, @"params" : @[[options getParams]], @"axis" : @"z" };
}

- (void)addPlotLine:(HIPlotLines *)options {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"addPlotLine", @"id" : self.uuid, @"params" : @[[options getParams]], @"axis" : @"z" };
}

- (void)addTitle:(NSNumber *)display {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"addTitle", @"id" : self.uuid, @"params" : @[display], @"axis" : @"z" };
}

- (void)drawCrosshair {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"drawCrosshair", @"id" : self.uuid, @"axis" : @"z" };
}

- (void)hideCrosshair {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"hideCrosshair", @"id" : self.uuid, @"axis" : @"z" };
}

- (void)remove {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"remove0", @"id" : self.uuid, @"axis" : @"z" };
}

- (void)remove:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"remove1", @"id" : self.uuid, @"params" : @[redraw], @"axis" : @"z" };
}

- (void)removePlotBand:(NSString *)id {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"removePlotBand", @"id" : self.uuid, @"params" : @[id], @"axis" : @"z" };
}

- (void)removePlotLine:(NSString *)id {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"removePlotLine", @"id" : self.uuid, @"params" : @[id], @"axis" : @"z" };
}

- (void)renderLine {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"renderLine", @"id" : self.uuid, @"axis" : @"z" };
}

- (void)renderMinorTick:(NSNumber *)pos {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"renderMinorTick", @"id" : self.uuid, @"params" : @[pos], @"axis" : @"z" };
}

- (void)renderTick:(NSNumber *)pos index:(NSNumber *)i {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"renderTick", @"id" : self.uuid, @"params" : @[pos, i], @"axis" : @"z" };
}

- (void)setAxisCategories:(NSArray<NSString *> *)categories {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setCategories0", @"id" : self.uuid, @"params" : @[categories], @"axis" : @"z" };
}

- (void)setAxisCategories:(NSArray<NSString *> *)categories redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setCategories1", @"id" : self.uuid, @"params" : @[categories, redraw], @"axis" : @"z" };
}

- (void)setExtremes {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setExtremes0", @"id" : self.uuid, @"axis" : @"z" };
}

- (void)setExtremes:(NSNumber *)newMin {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setExtremes1", @"id" : self.uuid, @"params" : @[newMin], @"axis" : @"z" };
}

- (void)setExtremes:(NSNumber *)newMin newMax:(NSNumber *)newMax {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setExtremes2", @"id" : self.uuid, @"params" : @[newMin, newMax], @"axis" : @"z" };
}

- (void)setExtremes:(NSNumber *)newMin newMax:(NSNumber *)newMax redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setExtremes3", @"id" : self.uuid, @"params" : @[newMin, newMax, redraw], @"axis" : @"z" };
}

- (void)setExtremes:(NSNumber *)newMin newMax:(NSNumber *)newMax redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setExtremes4", @"id" : self.uuid, @"params" : @[newMin, newMax, redraw, [animation getParams]], @"axis" : @"z" };
}

- (void)setTickPositions {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setTickPositions", @"id" : self.uuid, @"axis" : @"z" };
}

- (void)setAxisTitle:(HITitle *)title {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setTitle0", @"id" : self.uuid, @"params" : @[[title getParams]], @"axis" : @"z" };
}

- (void)setAxisTitle:(HITitle *)title redraw:(NSNumber *)redraw {
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"setTitle1", @"id" : self.uuid, @"params" : @[[title getParams], redraw], @"axis" : @"z" };
}

- (void)update:(HIZAxis *)options {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"update0", @"id" : self.uuid, @"params" : @[params], @"axis" : @"z" };
}

- (void)update:(HIZAxis *)options redraw:(NSNumber *)redraw {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Axis", @"method" : @"update1", @"id" : self.uuid, @"params" : @[params, redraw], @"axis" : @"z" };
}

@end