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
	copyColorAxis.minorTickColor = [self.minorTickColor copyWithZone: zone];
	copyColorAxis.tickmarkPlacement = [self.tickmarkPlacement copyWithZone: zone];
	copyColorAxis.gridZIndex = [self.gridZIndex copyWithZone: zone];
	copyColorAxis.accessibility = [self.accessibility copyWithZone: zone];
	copyColorAxis.visible = [self.visible copyWithZone: zone];
	copyColorAxis.tickWidth = [self.tickWidth copyWithZone: zone];
	copyColorAxis.showFirstLabel = [self.showFirstLabel copyWithZone: zone];
	copyColorAxis.startOfWeek = [self.startOfWeek copyWithZone: zone];
	copyColorAxis.id = [self.id copyWithZone: zone];
	copyColorAxis.tickPositions = [self.tickPositions copyWithZone: zone];
	copyColorAxis.angle = [self.angle copyWithZone: zone];
	copyColorAxis.floor = [self.floor copyWithZone: zone];
	copyColorAxis.minorGridLineColor = [self.minorGridLineColor copyWithZone: zone];
	copyColorAxis.tickPositioner = [self.tickPositioner copyWithZone: zone];
	copyColorAxis.minorGridLineDashStyle = [self.minorGridLineDashStyle copyWithZone: zone];
	copyColorAxis.minorTickLength = [self.minorTickLength copyWithZone: zone];
	copyColorAxis.units = [self.units copyWithZone: zone];
	copyColorAxis.softMin = [self.softMin copyWithZone: zone];
	copyColorAxis.gridLineInterpolation = [self.gridLineInterpolation copyWithZone: zone];
	copyColorAxis.ceiling = [self.ceiling copyWithZone: zone];
	copyColorAxis.gridLineDashStyle = [self.gridLineDashStyle copyWithZone: zone];
	copyColorAxis.minorTickPosition = [self.minorTickPosition copyWithZone: zone];
	copyColorAxis.minorTicks = [self.minorTicks copyWithZone: zone];
	copyColorAxis.minorTickWidth = [self.minorTickWidth copyWithZone: zone];
	copyColorAxis.softMax = [self.softMax copyWithZone: zone];
	copyColorAxis.tickColor = [self.tickColor copyWithZone: zone];
	copyColorAxis.tickPosition = [self.tickPosition copyWithZone: zone];
	copyColorAxis.showLastLabel = [self.showLastLabel copyWithZone: zone];
	copyColorAxis.uniqueNames = [self.uniqueNames copyWithZone: zone];
	copyColorAxis.className = [self.className copyWithZone: zone];
	copyColorAxis.tickAmount = [self.tickAmount copyWithZone: zone];
	copyColorAxis.lineColor = [self.lineColor copyWithZone: zone];
	copyColorAxis.minorGridLineWidth = [self.minorGridLineWidth copyWithZone: zone];
	copyColorAxis.minorTickInterval = [self.minorTickInterval copyWithZone: zone];
	copyColorAxis.margin = [self.margin copyWithZone: zone];
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
	if (self.minorTickColor) {
		params[@"minorTickColor"] = [self.minorTickColor getData];
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
	if (self.softMin) {
		params[@"softMin"] = self.softMin;
	}
	if (self.gridLineInterpolation) {
		params[@"gridLineInterpolation"] = self.gridLineInterpolation;
	}
	if (self.ceiling) {
		params[@"ceiling"] = self.ceiling;
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
	if (self.softMax) {
		params[@"softMax"] = self.softMax;
	}
	if (self.tickColor) {
		params[@"tickColor"] = [self.tickColor getData];
	}
	if (self.tickPosition) {
		params[@"tickPosition"] = self.tickPosition;
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
	if (self.lineColor) {
		params[@"lineColor"] = [self.lineColor getData];
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

-(void)setMinorTickColor:(HIColor *)minorTickColor {
	HIColor *oldValue = _minorTickColor;
	_minorTickColor = minorTickColor;
	[self updateHIObject:oldValue newValue:minorTickColor propertyName:@"minorTickColor"];
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

-(void)setSoftMin:(NSNumber *)softMin {
	NSNumber *oldValue = _softMin;
	_softMin = softMin;
	[self updateNSObject:oldValue newValue:softMin propertyName:@"softMin"];
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

@end