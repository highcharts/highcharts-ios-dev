#import "HIChartsJSONSerializableSubclass.h"
#import "HIParallelAxes.h"

@implementation HIParallelAxes

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIParallelAxes *copyParallelAxes = [[HIParallelAxes allocWithZone: zone] init];
	copyParallelAxes.title = [self.title copyWithZone: zone];
	copyParallelAxes.labels = [self.labels copyWithZone: zone];
	copyParallelAxes.offset = [self.offset copyWithZone: zone];
	copyParallelAxes.lineWidth = [self.lineWidth copyWithZone: zone];
	copyParallelAxes.minPadding = [self.minPadding copyWithZone: zone];
	copyParallelAxes.height = [self.height copyWithZone: zone];
	copyParallelAxes.maxColor = [self.maxColor copyWithZone: zone];
	copyParallelAxes.softMax = [self.softMax copyWithZone: zone];
	copyParallelAxes.min = [self.min copyWithZone: zone];
	copyParallelAxes.plotBands = [self.plotBands copyWithZone: zone];
	copyParallelAxes.stops = [self.stops copyWithZone: zone];
	copyParallelAxes.endOnTick = [self.endOnTick copyWithZone: zone];
	copyParallelAxes.max = [self.max copyWithZone: zone];
	copyParallelAxes.softMin = [self.softMin copyWithZone: zone];
	copyParallelAxes.type = [self.type copyWithZone: zone];
	copyParallelAxes.tickPixelInterval = [self.tickPixelInterval copyWithZone: zone];
	copyParallelAxes.tickWidth = [self.tickWidth copyWithZone: zone];
	copyParallelAxes.opposite = [self.opposite copyWithZone: zone];
	copyParallelAxes.reversed = [self.reversed copyWithZone: zone];
	copyParallelAxes.plotLines = [self.plotLines copyWithZone: zone];
	copyParallelAxes.gridLineWidth = [self.gridLineWidth copyWithZone: zone];
	copyParallelAxes.tooltipValueFormat = [self.tooltipValueFormat copyWithZone: zone];
	copyParallelAxes.minColor = [self.minColor copyWithZone: zone];
	copyParallelAxes.showLastLabel = [self.showLastLabel copyWithZone: zone];
	copyParallelAxes.startOnTick = [self.startOnTick copyWithZone: zone];
	copyParallelAxes.stackLabels = [self.stackLabels copyWithZone: zone];
	copyParallelAxes.maxPadding = [self.maxPadding copyWithZone: zone];
	copyParallelAxes.lineColor = [self.lineColor copyWithZone: zone];
	copyParallelAxes.reversedStacks = [self.reversedStacks copyWithZone: zone];
	copyParallelAxes.top = [self.top copyWithZone: zone];
	copyParallelAxes.zoomEnabled = [self.zoomEnabled copyWithZone: zone];
	copyParallelAxes.minorTickColor = [self.minorTickColor copyWithZone: zone];
	copyParallelAxes.pane = [self.pane copyWithZone: zone];
	copyParallelAxes.tickmarkPlacement = [self.tickmarkPlacement copyWithZone: zone];
	copyParallelAxes.gridZIndex = [self.gridZIndex copyWithZone: zone];
	copyParallelAxes.accessibility = [self.accessibility copyWithZone: zone];
	copyParallelAxes.visible = [self.visible copyWithZone: zone];
	copyParallelAxes.alignTicks = [self.alignTicks copyWithZone: zone];
	copyParallelAxes.minTickInterval = [self.minTickInterval copyWithZone: zone];
	copyParallelAxes.showFirstLabel = [self.showFirstLabel copyWithZone: zone];
	copyParallelAxes.startOfWeek = [self.startOfWeek copyWithZone: zone];
	copyParallelAxes.id = [self.id copyWithZone: zone];
	copyParallelAxes.tickPositions = [self.tickPositions copyWithZone: zone];
	copyParallelAxes.minRange = [self.minRange copyWithZone: zone];
	copyParallelAxes.angle = [self.angle copyWithZone: zone];
	copyParallelAxes.allowDecimals = [self.allowDecimals copyWithZone: zone];
	copyParallelAxes.floor = [self.floor copyWithZone: zone];
	copyParallelAxes.minorGridLineColor = [self.minorGridLineColor copyWithZone: zone];
	copyParallelAxes.tickPositioner = [self.tickPositioner copyWithZone: zone];
	copyParallelAxes.minorGridLineDashStyle = [self.minorGridLineDashStyle copyWithZone: zone];
	copyParallelAxes.width = [self.width copyWithZone: zone];
	copyParallelAxes.minorTickLength = [self.minorTickLength copyWithZone: zone];
	copyParallelAxes.units = [self.units copyWithZone: zone];
	copyParallelAxes.panningEnabled = [self.panningEnabled copyWithZone: zone];
	copyParallelAxes.gridLineInterpolation = [self.gridLineInterpolation copyWithZone: zone];
	copyParallelAxes.tickLength = [self.tickLength copyWithZone: zone];
	copyParallelAxes.ceiling = [self.ceiling copyWithZone: zone];
	copyParallelAxes.showEmpty = [self.showEmpty copyWithZone: zone];
	copyParallelAxes.gridLineDashStyle = [self.gridLineDashStyle copyWithZone: zone];
	copyParallelAxes.minorTickPosition = [self.minorTickPosition copyWithZone: zone];
	copyParallelAxes.breaks = [self.breaks copyWithZone: zone];
	copyParallelAxes.dateTimeLabelFormats = [self.dateTimeLabelFormats copyWithZone: zone];
	copyParallelAxes.zIndex = [self.zIndex copyWithZone: zone];
	copyParallelAxes.minorTicks = [self.minorTicks copyWithZone: zone];
	copyParallelAxes.minorTickWidth = [self.minorTickWidth copyWithZone: zone];
	copyParallelAxes.tickColor = [self.tickColor copyWithZone: zone];
	copyParallelAxes.tickInterval = [self.tickInterval copyWithZone: zone];
	copyParallelAxes.tickPosition = [self.tickPosition copyWithZone: zone];
	copyParallelAxes.categories = [self.categories copyWithZone: zone];
	copyParallelAxes.gridLineColor = [self.gridLineColor copyWithZone: zone];
	copyParallelAxes.linkedTo = [self.linkedTo copyWithZone: zone];
	copyParallelAxes.alternateGridColor = [self.alternateGridColor copyWithZone: zone];
	copyParallelAxes.uniqueNames = [self.uniqueNames copyWithZone: zone];
	copyParallelAxes.events = [self.events copyWithZone: zone];
	copyParallelAxes.className = [self.className copyWithZone: zone];
	copyParallelAxes.tickAmount = [self.tickAmount copyWithZone: zone];
	copyParallelAxes.crosshair = [self.crosshair copyWithZone: zone];
	copyParallelAxes.minorGridLineWidth = [self.minorGridLineWidth copyWithZone: zone];
	copyParallelAxes.minorTickInterval = [self.minorTickInterval copyWithZone: zone];
	copyParallelAxes.margin = [self.margin copyWithZone: zone];
	copyParallelAxes.left = [self.left copyWithZone: zone];
	return copyParallelAxes;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.minPadding) {
		params[@"minPadding"] = self.minPadding;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.maxColor) {
		params[@"maxColor"] = [self.maxColor getData];
	}
	if (self.softMax) {
		params[@"softMax"] = self.softMax;
	}
	if (self.min) {
		params[@"min"] = self.min;
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
	if (self.endOnTick) {
		params[@"endOnTick"] = self.endOnTick;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.softMin) {
		params[@"softMin"] = self.softMin;
	}
	if (self.type) {
		params[@"type"] = self.type;
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
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
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
	if (self.gridLineWidth) {
		params[@"gridLineWidth"] = self.gridLineWidth;
	}
	if (self.tooltipValueFormat) {
		params[@"tooltipValueFormat"] = self.tooltipValueFormat;
	}
	if (self.minColor) {
		params[@"minColor"] = [self.minColor getData];
	}
	if (self.showLastLabel) {
		params[@"showLastLabel"] = self.showLastLabel;
	}
	if (self.startOnTick) {
		params[@"startOnTick"] = self.startOnTick;
	}
	if (self.stackLabels) {
		params[@"stackLabels"] = [self.stackLabels getParams];
	}
	if (self.maxPadding) {
		params[@"maxPadding"] = self.maxPadding;
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.reversedStacks) {
		params[@"reversedStacks"] = self.reversedStacks;
	}
	if (self.top) {
		params[@"top"] = self.top;
	}
	if (self.zoomEnabled) {
		params[@"zoomEnabled"] = self.zoomEnabled;
	}
	if (self.minorTickColor) {
		params[@"minorTickColor"] = [self.minorTickColor getData];
	}
	if (self.pane) {
		params[@"pane"] = self.pane;
	}
	if (self.tickmarkPlacement) {
		params[@"tickmarkPlacement"] = self.tickmarkPlacement;
	}
	if (self.gridZIndex) {
		params[@"gridZIndex"] = self.gridZIndex;
	}
	if (self.accessibility) {
		params[@"accessibility"] = [self.accessibility getParams];
	}
	if (self.visible) {
		params[@"visible"] = self.visible;
	}
	if (self.alignTicks) {
		params[@"alignTicks"] = self.alignTicks;
	}
	if (self.minTickInterval) {
		params[@"minTickInterval"] = self.minTickInterval;
	}
	if (self.showFirstLabel) {
		params[@"showFirstLabel"] = self.showFirstLabel;
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
	if (self.minorGridLineColor) {
		params[@"minorGridLineColor"] = [self.minorGridLineColor getData];
	}
	if (self.tickPositioner) {
		params[@"tickPositioner"] = [self.tickPositioner getFunction];
	}
	if (self.minorGridLineDashStyle) {
		params[@"minorGridLineDashStyle"] = self.minorGridLineDashStyle;
	}
	if (self.width) {
		params[@"width"] = self.width;
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
	if (self.panningEnabled) {
		params[@"panningEnabled"] = self.panningEnabled;
	}
	if (self.gridLineInterpolation) {
		params[@"gridLineInterpolation"] = self.gridLineInterpolation;
	}
	if (self.tickLength) {
		params[@"tickLength"] = self.tickLength;
	}
	if (self.ceiling) {
		params[@"ceiling"] = self.ceiling;
	}
	if (self.showEmpty) {
		params[@"showEmpty"] = self.showEmpty;
	}
	if (self.gridLineDashStyle) {
		params[@"gridLineDashStyle"] = self.gridLineDashStyle;
	}
	if (self.minorTickPosition) {
		params[@"minorTickPosition"] = self.minorTickPosition;
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
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = [self.dateTimeLabelFormats getParams];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.minorTicks) {
		params[@"minorTicks"] = self.minorTicks;
	}
	if (self.minorTickWidth) {
		params[@"minorTickWidth"] = self.minorTickWidth;
	}
	if (self.tickColor) {
		params[@"tickColor"] = [self.tickColor getData];
	}
	if (self.tickInterval) {
		params[@"tickInterval"] = self.tickInterval;
	}
	if (self.tickPosition) {
		params[@"tickPosition"] = self.tickPosition;
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
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.alternateGridColor) {
		params[@"alternateGridColor"] = [self.alternateGridColor getData];
	}
	if (self.uniqueNames) {
		params[@"uniqueNames"] = self.uniqueNames;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.tickAmount) {
		params[@"tickAmount"] = self.tickAmount;
	}
	if (self.crosshair) {
		params[@"crosshair"] = [self.crosshair getParams];
	}
	if (self.minorGridLineWidth) {
		params[@"minorGridLineWidth"] = self.minorGridLineWidth;
	}
	if (self.minorTickInterval) {
		params[@"minorTickInterval"] = self.minorTickInterval;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.left) {
		params[@"left"] = self.left;
	}
	return params;
}

# pragma mark - Setters

-(void)setTitle:(HITitle *)title {
	HITitle *oldValue = _title;
	_title = title;
	[self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setLabels:(HILabels *)labels {
	HILabels *oldValue = _labels;
	_labels = labels;
	[self updateHIObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setOffset:(NSNumber *)offset {
	NSNumber *oldValue = _offset;
	_offset = offset;
	[self updateNSObject:oldValue newValue:offset propertyName:@"offset"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setMinPadding:(NSNumber *)minPadding {
	NSNumber *oldValue = _minPadding;
	_minPadding = minPadding;
	[self updateNSObject:oldValue newValue:minPadding propertyName:@"minPadding"];
}

-(void)setHeight:(id)height {
	id oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setMaxColor:(HIColor *)maxColor {
	HIColor *oldValue = _maxColor;
	_maxColor = maxColor;
	[self updateHIObject:oldValue newValue:maxColor propertyName:@"maxColor"];
}

-(void)setSoftMax:(NSNumber *)softMax {
	NSNumber *oldValue = _softMax;
	_softMax = softMax;
	[self updateNSObject:oldValue newValue:softMax propertyName:@"softMax"];
}

-(void)setMin:(NSNumber *)min {
	NSNumber *oldValue = _min;
	_min = min;
	[self updateNSObject:oldValue newValue:min propertyName:@"min"];
}

-(void)setPlotBands:(NSArray <HIPlotBands *> *)plotBands {
	NSArray <HIPlotBands *> *oldValue = _plotBands;
	_plotBands = plotBands;
	[self updateArrayObject:oldValue newValue:plotBands propertyName:@"plotBands"];
}

-(void)setStops:(NSArray *)stops {
	NSArray *oldValue = _stops;
	_stops = stops;
	[self updateArrayObject:oldValue newValue:stops propertyName:@"stops"];
}

-(void)setEndOnTick:(NSNumber *)endOnTick {
	NSNumber *oldValue = _endOnTick;
	_endOnTick = endOnTick;
	[self updateNSObject:oldValue newValue:endOnTick propertyName:@"endOnTick"];
}

-(void)setMax:(NSNumber *)max {
	NSNumber *oldValue = _max;
	_max = max;
	[self updateNSObject:oldValue newValue:max propertyName:@"max"];
}

-(void)setSoftMin:(NSNumber *)softMin {
	NSNumber *oldValue = _softMin;
	_softMin = softMin;
	[self updateNSObject:oldValue newValue:softMin propertyName:@"softMin"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setTickPixelInterval:(NSNumber *)tickPixelInterval {
	NSNumber *oldValue = _tickPixelInterval;
	_tickPixelInterval = tickPixelInterval;
	[self updateNSObject:oldValue newValue:tickPixelInterval propertyName:@"tickPixelInterval"];
}

-(void)setTickWidth:(NSNumber *)tickWidth {
	NSNumber *oldValue = _tickWidth;
	_tickWidth = tickWidth;
	[self updateNSObject:oldValue newValue:tickWidth propertyName:@"tickWidth"];
}

-(void)setOpposite:(NSNumber *)opposite {
	NSNumber *oldValue = _opposite;
	_opposite = opposite;
	[self updateNSObject:oldValue newValue:opposite propertyName:@"opposite"];
}

-(void)setReversed:(NSNumber *)reversed {
	NSNumber *oldValue = _reversed;
	_reversed = reversed;
	[self updateNSObject:oldValue newValue:reversed propertyName:@"reversed"];
}

-(void)setPlotLines:(NSArray <HIPlotLines *> *)plotLines {
	NSArray <HIPlotLines *> *oldValue = _plotLines;
	_plotLines = plotLines;
	[self updateArrayObject:oldValue newValue:plotLines propertyName:@"plotLines"];
}

-(void)setGridLineWidth:(NSNumber *)gridLineWidth {
	NSNumber *oldValue = _gridLineWidth;
	_gridLineWidth = gridLineWidth;
	[self updateNSObject:oldValue newValue:gridLineWidth propertyName:@"gridLineWidth"];
}

-(void)setTooltipValueFormat:(NSString *)tooltipValueFormat {
	NSString *oldValue = _tooltipValueFormat;
	_tooltipValueFormat = tooltipValueFormat;
	[self updateNSObject:oldValue newValue:tooltipValueFormat propertyName:@"tooltipValueFormat"];
}

-(void)setMinColor:(HIColor *)minColor {
	HIColor *oldValue = _minColor;
	_minColor = minColor;
	[self updateHIObject:oldValue newValue:minColor propertyName:@"minColor"];
}

-(void)setShowLastLabel:(NSString *)showLastLabel {
	NSString *oldValue = _showLastLabel;
	_showLastLabel = showLastLabel;
	[self updateNSObject:oldValue newValue:showLastLabel propertyName:@"showLastLabel"];
}

-(void)setStartOnTick:(NSNumber *)startOnTick {
	NSNumber *oldValue = _startOnTick;
	_startOnTick = startOnTick;
	[self updateNSObject:oldValue newValue:startOnTick propertyName:@"startOnTick"];
}

-(void)setStackLabels:(HIStackLabels *)stackLabels {
	HIStackLabels *oldValue = _stackLabels;
	_stackLabels = stackLabels;
	[self updateHIObject:oldValue newValue:stackLabels propertyName:@"stackLabels"];
}

-(void)setMaxPadding:(NSNumber *)maxPadding {
	NSNumber *oldValue = _maxPadding;
	_maxPadding = maxPadding;
	[self updateNSObject:oldValue newValue:maxPadding propertyName:@"maxPadding"];
}

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setReversedStacks:(NSNumber *)reversedStacks {
	NSNumber *oldValue = _reversedStacks;
	_reversedStacks = reversedStacks;
	[self updateNSObject:oldValue newValue:reversedStacks propertyName:@"reversedStacks"];
}

-(void)setTop:(id)top {
	id oldValue = _top;
	_top = top;
	[self updateNSObject:oldValue newValue:top propertyName:@"top"];
}

-(void)setZoomEnabled:(NSNumber *)zoomEnabled {
	NSNumber *oldValue = _zoomEnabled;
	_zoomEnabled = zoomEnabled;
	[self updateNSObject:oldValue newValue:zoomEnabled propertyName:@"zoomEnabled"];
}

-(void)setMinorTickColor:(HIColor *)minorTickColor {
	HIColor *oldValue = _minorTickColor;
	_minorTickColor = minorTickColor;
	[self updateHIObject:oldValue newValue:minorTickColor propertyName:@"minorTickColor"];
}

-(void)setPane:(NSNumber *)pane {
	NSNumber *oldValue = _pane;
	_pane = pane;
	[self updateNSObject:oldValue newValue:pane propertyName:@"pane"];
}

-(void)setTickmarkPlacement:(NSString *)tickmarkPlacement {
	NSString *oldValue = _tickmarkPlacement;
	_tickmarkPlacement = tickmarkPlacement;
	[self updateNSObject:oldValue newValue:tickmarkPlacement propertyName:@"tickmarkPlacement"];
}

-(void)setGridZIndex:(NSNumber *)gridZIndex {
	NSNumber *oldValue = _gridZIndex;
	_gridZIndex = gridZIndex;
	[self updateNSObject:oldValue newValue:gridZIndex propertyName:@"gridZIndex"];
}

-(void)setAccessibility:(HIAccessibility *)accessibility {
	HIAccessibility *oldValue = _accessibility;
	_accessibility = accessibility;
	[self updateHIObject:oldValue newValue:accessibility propertyName:@"accessibility"];
}

-(void)setVisible:(NSNumber *)visible {
	NSNumber *oldValue = _visible;
	_visible = visible;
	[self updateNSObject:oldValue newValue:visible propertyName:@"visible"];
}

-(void)setAlignTicks:(NSNumber *)alignTicks {
	NSNumber *oldValue = _alignTicks;
	_alignTicks = alignTicks;
	[self updateNSObject:oldValue newValue:alignTicks propertyName:@"alignTicks"];
}

-(void)setMinTickInterval:(NSNumber *)minTickInterval {
	NSNumber *oldValue = _minTickInterval;
	_minTickInterval = minTickInterval;
	[self updateNSObject:oldValue newValue:minTickInterval propertyName:@"minTickInterval"];
}

-(void)setShowFirstLabel:(NSNumber *)showFirstLabel {
	NSNumber *oldValue = _showFirstLabel;
	_showFirstLabel = showFirstLabel;
	[self updateNSObject:oldValue newValue:showFirstLabel propertyName:@"showFirstLabel"];
}

-(void)setStartOfWeek:(NSNumber *)startOfWeek {
	NSNumber *oldValue = _startOfWeek;
	_startOfWeek = startOfWeek;
	[self updateNSObject:oldValue newValue:startOfWeek propertyName:@"startOfWeek"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setTickPositions:(NSArray<NSNumber *> *)tickPositions {
	NSArray<NSNumber *> *oldValue = _tickPositions;
	_tickPositions = tickPositions;
	[self updateArrayObject:oldValue newValue:tickPositions propertyName:@"tickPositions"];
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

-(void)setMinorGridLineColor:(HIColor *)minorGridLineColor {
	HIColor *oldValue = _minorGridLineColor;
	_minorGridLineColor = minorGridLineColor;
	[self updateHIObject:oldValue newValue:minorGridLineColor propertyName:@"minorGridLineColor"];
}

-(void)setTickPositioner:(HIFunction *)tickPositioner {
	HIFunction *oldValue = _tickPositioner;
	_tickPositioner = tickPositioner;
	[self updateHIObject:oldValue newValue:tickPositioner propertyName:@"tickPositioner"];
}

-(void)setMinorGridLineDashStyle:(NSString *)minorGridLineDashStyle {
	NSString *oldValue = _minorGridLineDashStyle;
	_minorGridLineDashStyle = minorGridLineDashStyle;
	[self updateNSObject:oldValue newValue:minorGridLineDashStyle propertyName:@"minorGridLineDashStyle"];
}

-(void)setWidth:(id)width {
	id oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setMinorTickLength:(NSNumber *)minorTickLength {
	NSNumber *oldValue = _minorTickLength;
	_minorTickLength = minorTickLength;
	[self updateNSObject:oldValue newValue:minorTickLength propertyName:@"minorTickLength"];
}

-(void)setUnits:(NSArray<NSArray *> *)units {
	NSArray<NSArray *> *oldValue = _units;
	_units = units;
	[self updateArrayObject:oldValue newValue:units propertyName:@"units"];
}

-(void)setPanningEnabled:(NSNumber *)panningEnabled {
	NSNumber *oldValue = _panningEnabled;
	_panningEnabled = panningEnabled;
	[self updateNSObject:oldValue newValue:panningEnabled propertyName:@"panningEnabled"];
}

-(void)setGridLineInterpolation:(NSString *)gridLineInterpolation {
	NSString *oldValue = _gridLineInterpolation;
	_gridLineInterpolation = gridLineInterpolation;
	[self updateNSObject:oldValue newValue:gridLineInterpolation propertyName:@"gridLineInterpolation"];
}

-(void)setTickLength:(NSNumber *)tickLength {
	NSNumber *oldValue = _tickLength;
	_tickLength = tickLength;
	[self updateNSObject:oldValue newValue:tickLength propertyName:@"tickLength"];
}

-(void)setCeiling:(NSNumber *)ceiling {
	NSNumber *oldValue = _ceiling;
	_ceiling = ceiling;
	[self updateNSObject:oldValue newValue:ceiling propertyName:@"ceiling"];
}

-(void)setShowEmpty:(NSNumber *)showEmpty {
	NSNumber *oldValue = _showEmpty;
	_showEmpty = showEmpty;
	[self updateNSObject:oldValue newValue:showEmpty propertyName:@"showEmpty"];
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

-(void)setBreaks:(NSArray <HIBreaks *> *)breaks {
	NSArray <HIBreaks *> *oldValue = _breaks;
	_breaks = breaks;
	[self updateArrayObject:oldValue newValue:breaks propertyName:@"breaks"];
}

-(void)setDateTimeLabelFormats:(HIDateTimeLabelFormats *)dateTimeLabelFormats {
	HIDateTimeLabelFormats *oldValue = _dateTimeLabelFormats;
	_dateTimeLabelFormats = dateTimeLabelFormats;
	[self updateHIObject:oldValue newValue:dateTimeLabelFormats propertyName:@"dateTimeLabelFormats"];
}

-(void)setZIndex:(NSNumber *)zIndex {
	NSNumber *oldValue = _zIndex;
	_zIndex = zIndex;
	[self updateNSObject:oldValue newValue:zIndex propertyName:@"zIndex"];
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

-(void)setTickColor:(HIColor *)tickColor {
	HIColor *oldValue = _tickColor;
	_tickColor = tickColor;
	[self updateHIObject:oldValue newValue:tickColor propertyName:@"tickColor"];
}

-(void)setTickInterval:(NSNumber *)tickInterval {
	NSNumber *oldValue = _tickInterval;
	_tickInterval = tickInterval;
	[self updateNSObject:oldValue newValue:tickInterval propertyName:@"tickInterval"];
}

-(void)setTickPosition:(NSString *)tickPosition {
	NSString *oldValue = _tickPosition;
	_tickPosition = tickPosition;
	[self updateNSObject:oldValue newValue:tickPosition propertyName:@"tickPosition"];
}

-(void)setCategories:(NSArray<NSString *> *)categories {
	NSArray<NSString *> *oldValue = _categories;
	_categories = categories;
	[self updateArrayObject:oldValue newValue:categories propertyName:@"categories"];
}

-(void)setGridLineColor:(HIColor *)gridLineColor {
	HIColor *oldValue = _gridLineColor;
	_gridLineColor = gridLineColor;
	[self updateHIObject:oldValue newValue:gridLineColor propertyName:@"gridLineColor"];
}

-(void)setLinkedTo:(NSNumber *)linkedTo {
	NSNumber *oldValue = _linkedTo;
	_linkedTo = linkedTo;
	[self updateNSObject:oldValue newValue:linkedTo propertyName:@"linkedTo"];
}

-(void)setAlternateGridColor:(HIColor *)alternateGridColor {
	HIColor *oldValue = _alternateGridColor;
	_alternateGridColor = alternateGridColor;
	[self updateHIObject:oldValue newValue:alternateGridColor propertyName:@"alternateGridColor"];
}

-(void)setUniqueNames:(NSNumber *)uniqueNames {
	NSNumber *oldValue = _uniqueNames;
	_uniqueNames = uniqueNames;
	[self updateNSObject:oldValue newValue:uniqueNames propertyName:@"uniqueNames"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setTickAmount:(NSNumber *)tickAmount {
	NSNumber *oldValue = _tickAmount;
	_tickAmount = tickAmount;
	[self updateNSObject:oldValue newValue:tickAmount propertyName:@"tickAmount"];
}

-(void)setCrosshair:(HICrosshair *)crosshair {
	HICrosshair *oldValue = _crosshair;
	_crosshair = crosshair;
	[self updateHIObject:oldValue newValue:crosshair propertyName:@"crosshair"];
}

-(void)setMinorGridLineWidth:(NSNumber *)minorGridLineWidth {
	NSNumber *oldValue = _minorGridLineWidth;
	_minorGridLineWidth = minorGridLineWidth;
	[self updateNSObject:oldValue newValue:minorGridLineWidth propertyName:@"minorGridLineWidth"];
}

-(void)setMinorTickInterval:(id)minorTickInterval {
	id oldValue = _minorTickInterval;
	_minorTickInterval = minorTickInterval;
	[self updateNSObject:oldValue newValue:minorTickInterval propertyName:@"minorTickInterval"];
}

-(void)setMargin:(NSNumber *)margin {
	NSNumber *oldValue = _margin;
	_margin = margin;
	[self updateNSObject:oldValue newValue:margin propertyName:@"margin"];
}

-(void)setLeft:(id)left {
	id oldValue = _left;
	_left = left;
	[self updateNSObject:oldValue newValue:left propertyName:@"left"];
}

@end