#import "HIChartsJSONSerializableSubclass.h"
#import "HIColorAxis.h"

@implementation HIColorAxis

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIColorAxis *copyColorAxis = [[HIColorAxis allocWithZone: zone] init];
	copyColorAxis.dataClasses = [self.dataClasses copyWithZone: zone];
	copyColorAxis.minPadding = [self.minPadding copyWithZone: zone];
	copyColorAxis.labels = [self.labels copyWithZone: zone];
	copyColorAxis.maxColor = [self.maxColor copyWithZone: zone];
	copyColorAxis.marker = [self.marker copyWithZone: zone];
	copyColorAxis.layout = [self.layout copyWithZone: zone];
	copyColorAxis.allowDecimals = [self.allowDecimals copyWithZone: zone];
	copyColorAxis.startOnTick = [self.startOnTick copyWithZone: zone];
	copyColorAxis.stops = [self.stops copyWithZone: zone];
	copyColorAxis.dataClassColor = [self.dataClassColor copyWithZone: zone];
	copyColorAxis.endOnTick = [self.endOnTick copyWithZone: zone];
	copyColorAxis.type = [self.type copyWithZone: zone];
	copyColorAxis.events = [self.events copyWithZone: zone];
	copyColorAxis.tickPixelInterval = [self.tickPixelInterval copyWithZone: zone];
	copyColorAxis.max = [self.max copyWithZone: zone];
	copyColorAxis.reversed = [self.reversed copyWithZone: zone];
	copyColorAxis.gridLineWidth = [self.gridLineWidth copyWithZone: zone];
	copyColorAxis.tickInterval = [self.tickInterval copyWithZone: zone];
	copyColorAxis.gridLineColor = [self.gridLineColor copyWithZone: zone];
	copyColorAxis.minColor = [self.minColor copyWithZone: zone];
	copyColorAxis.min = [self.min copyWithZone: zone];
	copyColorAxis.maxPadding = [self.maxPadding copyWithZone: zone];
	copyColorAxis.tickLength = [self.tickLength copyWithZone: zone];
	copyColorAxis.showInLegend = [self.showInLegend copyWithZone: zone];
	copyColorAxis.zoomEnabled = [self.zoomEnabled copyWithZone: zone];
	copyColorAxis.minorTickColor = [self.minorTickColor copyWithZone: zone];
	copyColorAxis.pane = [self.pane copyWithZone: zone];
	copyColorAxis.tickmarkPlacement = [self.tickmarkPlacement copyWithZone: zone];
	copyColorAxis.gridZIndex = [self.gridZIndex copyWithZone: zone];
	copyColorAxis.accessibility = [self.accessibility copyWithZone: zone];
	copyColorAxis.height = [self.height copyWithZone: zone];
	copyColorAxis.top = [self.top copyWithZone: zone];
	copyColorAxis.visible = [self.visible copyWithZone: zone];
	copyColorAxis.alignTicks = [self.alignTicks copyWithZone: zone];
	copyColorAxis.minTickInterval = [self.minTickInterval copyWithZone: zone];
	copyColorAxis.tickWidth = [self.tickWidth copyWithZone: zone];
	copyColorAxis.showFirstLabel = [self.showFirstLabel copyWithZone: zone];
	copyColorAxis.startOfWeek = [self.startOfWeek copyWithZone: zone];
	copyColorAxis.id = [self.id copyWithZone: zone];
	copyColorAxis.tickPositions = [self.tickPositions copyWithZone: zone];
	copyColorAxis.minRange = [self.minRange copyWithZone: zone];
	copyColorAxis.angle = [self.angle copyWithZone: zone];
	copyColorAxis.floor = [self.floor copyWithZone: zone];
	copyColorAxis.minorGridLineColor = [self.minorGridLineColor copyWithZone: zone];
	copyColorAxis.tickPositioner = [self.tickPositioner copyWithZone: zone];
	copyColorAxis.minorGridLineDashStyle = [self.minorGridLineDashStyle copyWithZone: zone];
	copyColorAxis.width = [self.width copyWithZone: zone];
	copyColorAxis.minorTickLength = [self.minorTickLength copyWithZone: zone];
	copyColorAxis.plotLines = [self.plotLines copyWithZone: zone];
	copyColorAxis.units = [self.units copyWithZone: zone];
	copyColorAxis.softMin = [self.softMin copyWithZone: zone];
	copyColorAxis.panningEnabled = [self.panningEnabled copyWithZone: zone];
	copyColorAxis.gridLineInterpolation = [self.gridLineInterpolation copyWithZone: zone];
	copyColorAxis.ceiling = [self.ceiling copyWithZone: zone];
	copyColorAxis.showEmpty = [self.showEmpty copyWithZone: zone];
	copyColorAxis.gridLineDashStyle = [self.gridLineDashStyle copyWithZone: zone];
	copyColorAxis.opposite = [self.opposite copyWithZone: zone];
	copyColorAxis.minorTickPosition = [self.minorTickPosition copyWithZone: zone];
	copyColorAxis.breaks = [self.breaks copyWithZone: zone];
	copyColorAxis.dateTimeLabelFormats = [self.dateTimeLabelFormats copyWithZone: zone];
	copyColorAxis.zIndex = [self.zIndex copyWithZone: zone];
	copyColorAxis.minorTicks = [self.minorTicks copyWithZone: zone];
	copyColorAxis.minorTickWidth = [self.minorTickWidth copyWithZone: zone];
	copyColorAxis.offset = [self.offset copyWithZone: zone];
	copyColorAxis.softMax = [self.softMax copyWithZone: zone];
	copyColorAxis.tickColor = [self.tickColor copyWithZone: zone];
	copyColorAxis.tickPosition = [self.tickPosition copyWithZone: zone];
	copyColorAxis.categories = [self.categories copyWithZone: zone];
	copyColorAxis.reversedStacks = [self.reversedStacks copyWithZone: zone];
	copyColorAxis.linkedTo = [self.linkedTo copyWithZone: zone];
	copyColorAxis.alternateGridColor = [self.alternateGridColor copyWithZone: zone];
	copyColorAxis.showLastLabel = [self.showLastLabel copyWithZone: zone];
	copyColorAxis.uniqueNames = [self.uniqueNames copyWithZone: zone];
	copyColorAxis.className = [self.className copyWithZone: zone];
	copyColorAxis.tickAmount = [self.tickAmount copyWithZone: zone];
	copyColorAxis.crosshair = [self.crosshair copyWithZone: zone];
	copyColorAxis.lineColor = [self.lineColor copyWithZone: zone];
	copyColorAxis.minorGridLineWidth = [self.minorGridLineWidth copyWithZone: zone];
	copyColorAxis.title = [self.title copyWithZone: zone];
	copyColorAxis.minorTickInterval = [self.minorTickInterval copyWithZone: zone];
	copyColorAxis.lineWidth = [self.lineWidth copyWithZone: zone];
	copyColorAxis.margin = [self.margin copyWithZone: zone];
	copyColorAxis.plotBands = [self.plotBands copyWithZone: zone];
	copyColorAxis.left = [self.left copyWithZone: zone];
	return copyColorAxis;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.dataClasses) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.dataClasses) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"dataClasses"] = array;
	}
	if (self.minPadding) {
		params[@"minPadding"] = self.minPadding;
	}
	if (self.labels) {
		params[@"labels"] = [self.labels getParams];
	}
	if (self.maxColor) {
		params[@"maxColor"] = [self.maxColor getData];
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.layout) {
		params[@"layout"] = self.layout;
	}
	if (self.allowDecimals) {
		params[@"allowDecimals"] = self.allowDecimals;
	}
	if (self.startOnTick) {
		params[@"startOnTick"] = self.startOnTick;
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
	if (self.dataClassColor) {
		params[@"dataClassColor"] = self.dataClassColor;
	}
	if (self.endOnTick) {
		params[@"endOnTick"] = self.endOnTick;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.tickPixelInterval) {
		params[@"tickPixelInterval"] = self.tickPixelInterval;
	}
	if (self.max) {
		params[@"max"] = self.max;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.gridLineWidth) {
		params[@"gridLineWidth"] = self.gridLineWidth;
	}
	if (self.tickInterval) {
		params[@"tickInterval"] = self.tickInterval;
	}
	if (self.gridLineColor) {
		params[@"gridLineColor"] = [self.gridLineColor getData];
	}
	if (self.minColor) {
		params[@"minColor"] = [self.minColor getData];
	}
	if (self.min) {
		params[@"min"] = self.min;
	}
	if (self.maxPadding) {
		params[@"maxPadding"] = self.maxPadding;
	}
	if (self.tickLength) {
		params[@"tickLength"] = self.tickLength;
	}
	if (self.showInLegend) {
		params[@"showInLegend"] = self.showInLegend;
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
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.top) {
		params[@"top"] = self.top;
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
	if (self.tickWidth) {
		params[@"tickWidth"] = self.tickWidth;
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
	if (self.panningEnabled) {
		params[@"panningEnabled"] = self.panningEnabled;
	}
	if (self.gridLineInterpolation) {
		params[@"gridLineInterpolation"] = self.gridLineInterpolation;
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
	if (self.opposite) {
		params[@"opposite"] = self.opposite;
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
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.softMax) {
		params[@"softMax"] = self.softMax;
	}
	if (self.tickColor) {
		params[@"tickColor"] = [self.tickColor getData];
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
	if (self.reversedStacks) {
		params[@"reversedStacks"] = self.reversedStacks;
	}
	if (self.linkedTo) {
		params[@"linkedTo"] = self.linkedTo;
	}
	if (self.alternateGridColor) {
		params[@"alternateGridColor"] = [self.alternateGridColor getData];
	}
	if (self.showLastLabel) {
		params[@"showLastLabel"] = self.showLastLabel;
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
	if (self.crosshair) {
		params[@"crosshair"] = [self.crosshair getParams];
	}
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
	}
	if (self.minorGridLineWidth) {
		params[@"minorGridLineWidth"] = self.minorGridLineWidth;
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.minorTickInterval) {
		params[@"minorTickInterval"] = self.minorTickInterval;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
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
	if (self.left) {
		params[@"left"] = self.left;
	}
	return params;
}

# pragma mark - Setters

-(void)setDataClasses:(NSArray <HIDataClasses *> *)dataClasses {
	NSArray <HIDataClasses *> *oldValue = _dataClasses;
	_dataClasses = dataClasses;
	[self updateArrayObject:oldValue newValue:dataClasses propertyName:@"dataClasses"];
}

-(void)setMinPadding:(NSNumber *)minPadding {
	NSNumber *oldValue = _minPadding;
	_minPadding = minPadding;
	[self updateNSObject:oldValue newValue:minPadding propertyName:@"minPadding"];
}

-(void)setLabels:(HILabels *)labels {
	HILabels *oldValue = _labels;
	_labels = labels;
	[self updateHIObject:oldValue newValue:labels propertyName:@"labels"];
}

-(void)setMaxColor:(HIColor *)maxColor {
	HIColor *oldValue = _maxColor;
	_maxColor = maxColor;
	[self updateHIObject:oldValue newValue:maxColor propertyName:@"maxColor"];
}

-(void)setMarker:(HIMarker *)marker {
	HIMarker *oldValue = _marker;
	_marker = marker;
	[self updateHIObject:oldValue newValue:marker propertyName:@"marker"];
}

-(void)setLayout:(NSString *)layout {
	NSString *oldValue = _layout;
	_layout = layout;
	[self updateNSObject:oldValue newValue:layout propertyName:@"layout"];
}

-(void)setAllowDecimals:(NSNumber *)allowDecimals {
	NSNumber *oldValue = _allowDecimals;
	_allowDecimals = allowDecimals;
	[self updateNSObject:oldValue newValue:allowDecimals propertyName:@"allowDecimals"];
}

-(void)setStartOnTick:(NSNumber *)startOnTick {
	NSNumber *oldValue = _startOnTick;
	_startOnTick = startOnTick;
	[self updateNSObject:oldValue newValue:startOnTick propertyName:@"startOnTick"];
}

-(void)setStops:(NSArray<NSArray *> *)stops {
	NSArray<NSArray *> *oldValue = _stops;
	_stops = stops;
	[self updateArrayObject:oldValue newValue:stops propertyName:@"stops"];
}

-(void)setDataClassColor:(NSString *)dataClassColor {
	NSString *oldValue = _dataClassColor;
	_dataClassColor = dataClassColor;
	[self updateNSObject:oldValue newValue:dataClassColor propertyName:@"dataClassColor"];
}

-(void)setEndOnTick:(NSNumber *)endOnTick {
	NSNumber *oldValue = _endOnTick;
	_endOnTick = endOnTick;
	[self updateNSObject:oldValue newValue:endOnTick propertyName:@"endOnTick"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setTickPixelInterval:(NSNumber *)tickPixelInterval {
	NSNumber *oldValue = _tickPixelInterval;
	_tickPixelInterval = tickPixelInterval;
	[self updateNSObject:oldValue newValue:tickPixelInterval propertyName:@"tickPixelInterval"];
}

-(void)setMax:(NSNumber *)max {
	NSNumber *oldValue = _max;
	_max = max;
	[self updateNSObject:oldValue newValue:max propertyName:@"max"];
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

-(void)setTickInterval:(NSNumber *)tickInterval {
	NSNumber *oldValue = _tickInterval;
	_tickInterval = tickInterval;
	[self updateNSObject:oldValue newValue:tickInterval propertyName:@"tickInterval"];
}

-(void)setGridLineColor:(HIColor *)gridLineColor {
	HIColor *oldValue = _gridLineColor;
	_gridLineColor = gridLineColor;
	[self updateHIObject:oldValue newValue:gridLineColor propertyName:@"gridLineColor"];
}

-(void)setMinColor:(HIColor *)minColor {
	HIColor *oldValue = _minColor;
	_minColor = minColor;
	[self updateHIObject:oldValue newValue:minColor propertyName:@"minColor"];
}

-(void)setMin:(NSNumber *)min {
	NSNumber *oldValue = _min;
	_min = min;
	[self updateNSObject:oldValue newValue:min propertyName:@"min"];
}

-(void)setMaxPadding:(NSNumber *)maxPadding {
	NSNumber *oldValue = _maxPadding;
	_maxPadding = maxPadding;
	[self updateNSObject:oldValue newValue:maxPadding propertyName:@"maxPadding"];
}

-(void)setTickLength:(NSNumber *)tickLength {
	NSNumber *oldValue = _tickLength;
	_tickLength = tickLength;
	[self updateNSObject:oldValue newValue:tickLength propertyName:@"tickLength"];
}

-(void)setShowInLegend:(NSNumber *)showInLegend {
	NSNumber *oldValue = _showInLegend;
	_showInLegend = showInLegend;
	[self updateNSObject:oldValue newValue:showInLegend propertyName:@"showInLegend"];
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

-(void)setHeight:(id)height {
	id oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setTop:(id)top {
	id oldValue = _top;
	_top = top;
	[self updateNSObject:oldValue newValue:top propertyName:@"top"];
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

-(void)setTickWidth:(NSNumber *)tickWidth {
	NSNumber *oldValue = _tickWidth;
	_tickWidth = tickWidth;
	[self updateNSObject:oldValue newValue:tickWidth propertyName:@"tickWidth"];
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
	NSNumber *oldValue = _softMin;
	_softMin = softMin;
	[self updateNSObject:oldValue newValue:softMin propertyName:@"softMin"];
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

-(void)setOpposite:(NSNumber *)opposite {
	NSNumber *oldValue = _opposite;
	_opposite = opposite;
	[self updateNSObject:oldValue newValue:opposite propertyName:@"opposite"];
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

-(void)setOffset:(NSNumber *)offset {
	NSNumber *oldValue = _offset;
	_offset = offset;
	[self updateNSObject:oldValue newValue:offset propertyName:@"offset"];
}

-(void)setSoftMax:(NSNumber *)softMax {
	NSNumber *oldValue = _softMax;
	_softMax = softMax;
	[self updateNSObject:oldValue newValue:softMax propertyName:@"softMax"];
}

-(void)setTickColor:(HIColor *)tickColor {
	HIColor *oldValue = _tickColor;
	_tickColor = tickColor;
	[self updateHIObject:oldValue newValue:tickColor propertyName:@"tickColor"];
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

-(void)setReversedStacks:(NSNumber *)reversedStacks {
	NSNumber *oldValue = _reversedStacks;
	_reversedStacks = reversedStacks;
	[self updateNSObject:oldValue newValue:reversedStacks propertyName:@"reversedStacks"];
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

-(void)setShowLastLabel:(NSNumber *)showLastLabel {
	NSNumber *oldValue = _showLastLabel;
	_showLastLabel = showLastLabel;
	[self updateNSObject:oldValue newValue:showLastLabel propertyName:@"showLastLabel"];
}

-(void)setUniqueNames:(NSNumber *)uniqueNames {
	NSNumber *oldValue = _uniqueNames;
	_uniqueNames = uniqueNames;
	[self updateNSObject:oldValue newValue:uniqueNames propertyName:@"uniqueNames"];
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

-(void)setLineColor:(HIColor *)lineColor {
	HIColor *oldValue = _lineColor;
	_lineColor = lineColor;
	[self updateHIObject:oldValue newValue:lineColor propertyName:@"lineColor"];
}

-(void)setMinorGridLineWidth:(NSNumber *)minorGridLineWidth {
	NSNumber *oldValue = _minorGridLineWidth;
	_minorGridLineWidth = minorGridLineWidth;
	[self updateNSObject:oldValue newValue:minorGridLineWidth propertyName:@"minorGridLineWidth"];
}

-(void)setTitle:(HITitle *)title {
	HITitle *oldValue = _title;
	_title = title;
	[self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setMinorTickInterval:(id)minorTickInterval {
	id oldValue = _minorTickInterval;
	_minorTickInterval = minorTickInterval;
	[self updateNSObject:oldValue newValue:minorTickInterval propertyName:@"minorTickInterval"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setMargin:(NSNumber *)margin {
	NSNumber *oldValue = _margin;
	_margin = margin;
	[self updateNSObject:oldValue newValue:margin propertyName:@"margin"];
}

-(void)setPlotBands:(NSArray <HIPlotBands *> *)plotBands {
	NSArray <HIPlotBands *> *oldValue = _plotBands;
	_plotBands = plotBands;
	[self updateArrayObject:oldValue newValue:plotBands propertyName:@"plotBands"];
}

-(void)setLeft:(id)left {
	id oldValue = _left;
	_left = left;
	[self updateNSObject:oldValue newValue:left propertyName:@"left"];
}

@end