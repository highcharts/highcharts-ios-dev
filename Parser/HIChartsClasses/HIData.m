#import "HIChartsJSONSerializableSubclass.h"
#import "HIData.h"

@implementation HIData

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIData *copyData = [[HIData allocWithZone: zone] init];
	copyData.enablePolling = [self.enablePolling copyWithZone: zone];
	copyData.startColumn = [self.startColumn copyWithZone: zone];
	copyData.lineDelimiter = [self.lineDelimiter copyWithZone: zone];
	copyData.table = [self.table copyWithZone: zone];
	copyData.rowsURL = [self.rowsURL copyWithZone: zone];
	copyData.parseDate = [self.parseDate copyWithZone: zone];
	copyData.seriesMapping = [self.seriesMapping copyWithZone: zone];
	copyData.rows = [self.rows copyWithZone: zone];
	copyData.csvURL = [self.csvURL copyWithZone: zone];
	copyData.dateFormat = [self.dateFormat copyWithZone: zone];
	copyData.googleSpreadsheetWorksheet = [self.googleSpreadsheetWorksheet copyWithZone: zone];
	copyData.dataRefreshRate = [self.dataRefreshRate copyWithZone: zone];
	copyData.parsed = [self.parsed copyWithZone: zone];
	copyData.startRow = [self.startRow copyWithZone: zone];
	copyData.csv = [self.csv copyWithZone: zone];
	copyData.columns = [self.columns copyWithZone: zone];
	copyData.endRow = [self.endRow copyWithZone: zone];
	copyData.itemDelimiter = [self.itemDelimiter copyWithZone: zone];
	copyData.complete = [self.complete copyWithZone: zone];
	copyData.beforeParse = [self.beforeParse copyWithZone: zone];
	copyData.endColumn = [self.endColumn copyWithZone: zone];
	copyData.firstRowAsNames = [self.firstRowAsNames copyWithZone: zone];
	copyData.googleSpreadsheetKey = [self.googleSpreadsheetKey copyWithZone: zone];
	copyData.switchRowsAndColumns = [self.switchRowsAndColumns copyWithZone: zone];
	copyData.decimalPoint = [self.decimalPoint copyWithZone: zone];
	copyData.columnsURL = [self.columnsURL copyWithZone: zone];
	copyData.high = [self.high copyWithZone: zone];
	copyData.q1 = [self.q1 copyWithZone: zone];
	copyData.q3 = [self.q3 copyWithZone: zone];
	copyData.median = [self.median copyWithZone: zone];
	copyData.low = [self.low copyWithZone: zone];
	copyData.labelrank = [self.labelrank copyWithZone: zone];
	copyData.y = [self.y copyWithZone: zone];
	copyData.definition = [self.definition copyWithZone: zone];
	copyData.name = [self.name copyWithZone: zone];
	copyData.color = [self.color copyWithZone: zone];
	copyData.selected = [self.selected copyWithZone: zone];
	copyData.dataLabels = [self.dataLabels copyWithZone: zone];
	copyData.className = [self.className copyWithZone: zone];
	copyData.dragDrop = [self.dragDrop copyWithZone: zone];
	copyData.id = [self.id copyWithZone: zone];
	copyData.x = [self.x copyWithZone: zone];
	copyData.drilldown = [self.drilldown copyWithZone: zone];
	copyData.events = [self.events copyWithZone: zone];
	copyData.colorIndex = [self.colorIndex copyWithZone: zone];
	copyData.legendIndex = [self.legendIndex copyWithZone: zone];
	copyData.marker = [self.marker copyWithZone: zone];
	copyData.weight = [self.weight copyWithZone: zone];
	copyData.direction = [self.direction copyWithZone: zone];
	copyData.length = [self.length copyWithZone: zone];
	copyData.target = [self.target copyWithZone: zone];
	copyData.targetOptions = [self.targetOptions copyWithZone: zone];
	copyData.borderColor = [self.borderColor copyWithZone: zone];
	copyData.pointWidth = [self.pointWidth copyWithZone: zone];
	copyData.borderWidth = [self.borderWidth copyWithZone: zone];
	copyData.pointPadding = [self.pointPadding copyWithZone: zone];
	copyData.value = [self.value copyWithZone: zone];
	copyData.isIntermediateSum = [self.isIntermediateSum copyWithZone: zone];
	copyData.isSum = [self.isSum copyWithZone: zone];
	copyData.sliced = [self.sliced copyWithZone: zone];
	copyData.to = [self.to copyWithZone: zone];
	copyData.from = [self.from copyWithZone: zone];
	copyData.innerRadius = [self.innerRadius copyWithZone: zone];
	copyData.radius = [self.radius copyWithZone: zone];
	copyData.outgoing = [self.outgoing copyWithZone: zone];
	copyData.z = [self.z copyWithZone: zone];
	copyData.x2 = [self.x2 copyWithZone: zone];
	copyData.partialFill = [self.partialFill copyWithZone: zone];
	copyData.parent = [self.parent copyWithZone: zone];
	copyData.colorValue = [self.colorValue copyWithZone: zone];
	copyData.sets = [self.sets copyWithZone: zone];
	return copyData;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enablePolling) {
		params[@"enablePolling"] = self.enablePolling;
	}
	if (self.startColumn) {
		params[@"startColumn"] = self.startColumn;
	}
	if (self.lineDelimiter) {
		params[@"lineDelimiter"] = self.lineDelimiter;
	}
	if (self.table) {
		params[@"table"] = self.table;
	}
	if (self.rowsURL) {
		params[@"rowsURL"] = self.rowsURL;
	}
	if (self.parseDate) {
		params[@"parseDate"] = [self.parseDate getFunction];
	}
	if (self.seriesMapping) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.seriesMapping) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"seriesMapping"] = array;
	}
	if (self.rows) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.rows) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"rows"] = array;
	}
	if (self.csvURL) {
		params[@"csvURL"] = self.csvURL;
	}
	if (self.dateFormat) {
		params[@"dateFormat"] = self.dateFormat;
	}
	if (self.googleSpreadsheetWorksheet) {
		params[@"googleSpreadsheetWorksheet"] = self.googleSpreadsheetWorksheet;
	}
	if (self.dataRefreshRate) {
		params[@"dataRefreshRate"] = self.dataRefreshRate;
	}
	if (self.parsed) {
		params[@"parsed"] = [self.parsed getFunction];
	}
	if (self.startRow) {
		params[@"startRow"] = self.startRow;
	}
	if (self.csv) {
		params[@"csv"] = self.csv;
	}
	if (self.columns) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.columns) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"columns"] = array;
	}
	if (self.endRow) {
		params[@"endRow"] = self.endRow;
	}
	if (self.itemDelimiter) {
		params[@"itemDelimiter"] = self.itemDelimiter;
	}
	if (self.complete) {
		params[@"complete"] = [self.complete getFunction];
	}
	if (self.beforeParse) {
		params[@"beforeParse"] = [self.beforeParse getFunction];
	}
	if (self.endColumn) {
		params[@"endColumn"] = self.endColumn;
	}
	if (self.firstRowAsNames) {
		params[@"firstRowAsNames"] = self.firstRowAsNames;
	}
	if (self.googleSpreadsheetKey) {
		params[@"googleSpreadsheetKey"] = self.googleSpreadsheetKey;
	}
	if (self.switchRowsAndColumns) {
		params[@"switchRowsAndColumns"] = self.switchRowsAndColumns;
	}
	if (self.decimalPoint) {
		params[@"decimalPoint"] = self.decimalPoint;
	}
	if (self.columnsURL) {
		params[@"columnsURL"] = self.columnsURL;
	}
	if (self.high) {
		params[@"high"] = self.high;
	}
	if (self.q1) {
		params[@"q1"] = self.q1;
	}
	if (self.q3) {
		params[@"q3"] = self.q3;
	}
	if (self.median) {
		params[@"median"] = self.median;
	}
	if (self.low) {
		params[@"low"] = self.low;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.dragDrop) {
		params[@"dragDrop"] = [self.dragDrop getParams];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.weight) {
		params[@"weight"] = self.weight;
	}
	if (self.direction) {
		params[@"direction"] = self.direction;
	}
	if (self.length) {
		params[@"length"] = self.length;
	}
	if (self.target) {
		params[@"target"] = self.target;
	}
	if (self.targetOptions) {
		params[@"targetOptions"] = [self.targetOptions getParams];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.pointWidth) {
		params[@"pointWidth"] = self.pointWidth;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.isIntermediateSum) {
		params[@"isIntermediateSum"] = self.isIntermediateSum;
	}
	if (self.isSum) {
		params[@"isSum"] = self.isSum;
	}
	if (self.sliced) {
		params[@"sliced"] = self.sliced;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.outgoing) {
		params[@"outgoing"] = self.outgoing;
	}
	if (self.z) {
		params[@"z"] = self.z;
	}
	if (self.x2) {
		params[@"x2"] = self.x2;
	}
	if (self.partialFill) {
		params[@"partialFill"] = [self.partialFill getParams];
	}
	if (self.parent) {
		params[@"parent"] = self.parent;
	}
	if (self.colorValue) {
		params[@"colorValue"] = self.colorValue;
	}
	if (self.sets) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.sets) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"sets"] = array;
	}
	return params;
}

# pragma mark - Setters

-(void)setEnablePolling:(NSNumber *)enablePolling {
	NSNumber *oldValue = _enablePolling;
	_enablePolling = enablePolling;
	[self updateNSObject:oldValue newValue:enablePolling propertyName:@"enablePolling"];
}

-(void)setStartColumn:(NSNumber *)startColumn {
	NSNumber *oldValue = _startColumn;
	_startColumn = startColumn;
	[self updateNSObject:oldValue newValue:startColumn propertyName:@"startColumn"];
}

-(void)setLineDelimiter:(NSString *)lineDelimiter {
	NSString *oldValue = _lineDelimiter;
	_lineDelimiter = lineDelimiter;
	[self updateNSObject:oldValue newValue:lineDelimiter propertyName:@"lineDelimiter"];
}

-(void)setTable:(NSString *)table {
	NSString *oldValue = _table;
	_table = table;
	[self updateNSObject:oldValue newValue:table propertyName:@"table"];
}

-(void)setRowsURL:(NSString *)rowsURL {
	NSString *oldValue = _rowsURL;
	_rowsURL = rowsURL;
	[self updateNSObject:oldValue newValue:rowsURL propertyName:@"rowsURL"];
}

-(void)setParseDate:(HIFunction *)parseDate {
	HIFunction *oldValue = _parseDate;
	_parseDate = parseDate;
	[self updateHIObject:oldValue newValue:parseDate propertyName:@"parseDate"];
}

-(void)setSeriesMapping:(NSArray *)seriesMapping {
	NSArray *oldValue = _seriesMapping;
	_seriesMapping = seriesMapping;
	[self updateArrayObject:oldValue newValue:seriesMapping propertyName:@"seriesMapping"];
}

-(void)setRows:(NSArray<NSArray *> *)rows {
	NSArray<NSArray *> *oldValue = _rows;
	_rows = rows;
	[self updateArrayObject:oldValue newValue:rows propertyName:@"rows"];
}

-(void)setCsvURL:(NSString *)csvURL {
	NSString *oldValue = _csvURL;
	_csvURL = csvURL;
	[self updateNSObject:oldValue newValue:csvURL propertyName:@"csvURL"];
}

-(void)setDateFormat:(NSString *)dateFormat {
	NSString *oldValue = _dateFormat;
	_dateFormat = dateFormat;
	[self updateNSObject:oldValue newValue:dateFormat propertyName:@"dateFormat"];
}

-(void)setGoogleSpreadsheetWorksheet:(NSString *)googleSpreadsheetWorksheet {
	NSString *oldValue = _googleSpreadsheetWorksheet;
	_googleSpreadsheetWorksheet = googleSpreadsheetWorksheet;
	[self updateNSObject:oldValue newValue:googleSpreadsheetWorksheet propertyName:@"googleSpreadsheetWorksheet"];
}

-(void)setDataRefreshRate:(NSNumber *)dataRefreshRate {
	NSNumber *oldValue = _dataRefreshRate;
	_dataRefreshRate = dataRefreshRate;
	[self updateNSObject:oldValue newValue:dataRefreshRate propertyName:@"dataRefreshRate"];
}

-(void)setParsed:(HIFunction *)parsed {
	HIFunction *oldValue = _parsed;
	_parsed = parsed;
	[self updateHIObject:oldValue newValue:parsed propertyName:@"parsed"];
}

-(void)setStartRow:(NSNumber *)startRow {
	NSNumber *oldValue = _startRow;
	_startRow = startRow;
	[self updateNSObject:oldValue newValue:startRow propertyName:@"startRow"];
}

-(void)setCsv:(NSString *)csv {
	NSString *oldValue = _csv;
	_csv = csv;
	[self updateNSObject:oldValue newValue:csv propertyName:@"csv"];
}

-(void)setColumns:(NSArray<NSArray *> *)columns {
	NSArray<NSArray *> *oldValue = _columns;
	_columns = columns;
	[self updateArrayObject:oldValue newValue:columns propertyName:@"columns"];
}

-(void)setEndRow:(NSNumber *)endRow {
	NSNumber *oldValue = _endRow;
	_endRow = endRow;
	[self updateNSObject:oldValue newValue:endRow propertyName:@"endRow"];
}

-(void)setItemDelimiter:(NSString *)itemDelimiter {
	NSString *oldValue = _itemDelimiter;
	_itemDelimiter = itemDelimiter;
	[self updateNSObject:oldValue newValue:itemDelimiter propertyName:@"itemDelimiter"];
}

-(void)setComplete:(HIFunction *)complete {
	HIFunction *oldValue = _complete;
	_complete = complete;
	[self updateHIObject:oldValue newValue:complete propertyName:@"complete"];
}

-(void)setBeforeParse:(HIFunction *)beforeParse {
	HIFunction *oldValue = _beforeParse;
	_beforeParse = beforeParse;
	[self updateHIObject:oldValue newValue:beforeParse propertyName:@"beforeParse"];
}

-(void)setEndColumn:(NSNumber *)endColumn {
	NSNumber *oldValue = _endColumn;
	_endColumn = endColumn;
	[self updateNSObject:oldValue newValue:endColumn propertyName:@"endColumn"];
}

-(void)setFirstRowAsNames:(NSNumber *)firstRowAsNames {
	NSNumber *oldValue = _firstRowAsNames;
	_firstRowAsNames = firstRowAsNames;
	[self updateNSObject:oldValue newValue:firstRowAsNames propertyName:@"firstRowAsNames"];
}

-(void)setGoogleSpreadsheetKey:(NSString *)googleSpreadsheetKey {
	NSString *oldValue = _googleSpreadsheetKey;
	_googleSpreadsheetKey = googleSpreadsheetKey;
	[self updateNSObject:oldValue newValue:googleSpreadsheetKey propertyName:@"googleSpreadsheetKey"];
}

-(void)setSwitchRowsAndColumns:(NSNumber *)switchRowsAndColumns {
	NSNumber *oldValue = _switchRowsAndColumns;
	_switchRowsAndColumns = switchRowsAndColumns;
	[self updateNSObject:oldValue newValue:switchRowsAndColumns propertyName:@"switchRowsAndColumns"];
}

-(void)setDecimalPoint:(NSString *)decimalPoint {
	NSString *oldValue = _decimalPoint;
	_decimalPoint = decimalPoint;
	[self updateNSObject:oldValue newValue:decimalPoint propertyName:@"decimalPoint"];
}

-(void)setColumnsURL:(NSString *)columnsURL {
	NSString *oldValue = _columnsURL;
	_columnsURL = columnsURL;
	[self updateNSObject:oldValue newValue:columnsURL propertyName:@"columnsURL"];
}

-(void)setHigh:(NSNumber *)high {
	NSNumber *oldValue = _high;
	_high = high;
	[self updateNSObject:oldValue newValue:high propertyName:@"high"];
}

-(void)setQ1:(NSNumber *)q1 {
	NSNumber *oldValue = _q1;
	_q1 = q1;
	[self updateNSObject:oldValue newValue:q1 propertyName:@"q1"];
}

-(void)setQ3:(NSNumber *)q3 {
	NSNumber *oldValue = _q3;
	_q3 = q3;
	[self updateNSObject:oldValue newValue:q3 propertyName:@"q3"];
}

-(void)setMedian:(NSNumber *)median {
	NSNumber *oldValue = _median;
	_median = median;
	[self updateNSObject:oldValue newValue:median propertyName:@"median"];
}

-(void)setLow:(NSNumber *)low {
	NSNumber *oldValue = _low;
	_low = low;
	[self updateNSObject:oldValue newValue:low propertyName:@"low"];
}

-(void)setLabelrank:(NSNumber *)labelrank {
	NSNumber *oldValue = _labelrank;
	_labelrank = labelrank;
	[self updateNSObject:oldValue newValue:labelrank propertyName:@"labelrank"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setDefinition:(NSString *)definition {
	NSString *oldValue = _definition;
	_definition = definition;
	[self updateNSObject:oldValue newValue:definition propertyName:@"definition"];
}

-(void)setName:(NSString *)name {
	NSString *oldValue = _name;
	_name = name;
	[self updateNSObject:oldValue newValue:name propertyName:@"name"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setSelected:(NSNumber *)selected {
	NSNumber *oldValue = _selected;
	_selected = selected;
	[self updateNSObject:oldValue newValue:selected propertyName:@"selected"];
}

-(void)setDataLabels:(id)dataLabels {
	id oldValue = _dataLabels;
	_dataLabels = dataLabels;
	[self updateNSObject:oldValue newValue:dataLabels propertyName:@"dataLabels"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setDragDrop:(HIDragDrop *)dragDrop {
	HIDragDrop *oldValue = _dragDrop;
	_dragDrop = dragDrop;
	[self updateHIObject:oldValue newValue:dragDrop propertyName:@"dragDrop"];
}

-(void)setId:(NSString *)id {
	NSString *oldValue = _id;
	_id = id;
	[self updateNSObject:oldValue newValue:id propertyName:@"id"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setDrilldown:(NSString *)drilldown {
	NSString *oldValue = _drilldown;
	_drilldown = drilldown;
	[self updateNSObject:oldValue newValue:drilldown propertyName:@"drilldown"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setColorIndex:(NSNumber *)colorIndex {
	NSNumber *oldValue = _colorIndex;
	_colorIndex = colorIndex;
	[self updateNSObject:oldValue newValue:colorIndex propertyName:@"colorIndex"];
}

-(void)setLegendIndex:(NSNumber *)legendIndex {
	NSNumber *oldValue = _legendIndex;
	_legendIndex = legendIndex;
	[self updateNSObject:oldValue newValue:legendIndex propertyName:@"legendIndex"];
}

-(void)setMarker:(HIMarker *)marker {
	HIMarker *oldValue = _marker;
	_marker = marker;
	[self updateHIObject:oldValue newValue:marker propertyName:@"marker"];
}

-(void)setWeight:(NSNumber *)weight {
	NSNumber *oldValue = _weight;
	_weight = weight;
	[self updateNSObject:oldValue newValue:weight propertyName:@"weight"];
}

-(void)setDirection:(NSNumber *)direction {
	NSNumber *oldValue = _direction;
	_direction = direction;
	[self updateNSObject:oldValue newValue:direction propertyName:@"direction"];
}

-(void)setLength:(NSNumber *)length {
	NSNumber *oldValue = _length;
	_length = length;
	[self updateNSObject:oldValue newValue:length propertyName:@"length"];
}

-(void)setTarget:(NSNumber *)target {
	NSNumber *oldValue = _target;
	_target = target;
	[self updateNSObject:oldValue newValue:target propertyName:@"target"];
}

-(void)setTargetOptions:(HITargetOptions *)targetOptions {
	HITargetOptions *oldValue = _targetOptions;
	_targetOptions = targetOptions;
	[self updateHIObject:oldValue newValue:targetOptions propertyName:@"targetOptions"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	NSNumber *oldValue = _pointWidth;
	_pointWidth = pointWidth;
	[self updateNSObject:oldValue newValue:pointWidth propertyName:@"pointWidth"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	NSNumber *oldValue = _pointPadding;
	_pointPadding = pointPadding;
	[self updateNSObject:oldValue newValue:pointPadding propertyName:@"pointPadding"];
}

-(void)setValue:(NSNumber *)value {
	NSNumber *oldValue = _value;
	_value = value;
	[self updateNSObject:oldValue newValue:value propertyName:@"value"];
}

-(void)setIsIntermediateSum:(NSNumber *)isIntermediateSum {
	NSNumber *oldValue = _isIntermediateSum;
	_isIntermediateSum = isIntermediateSum;
	[self updateNSObject:oldValue newValue:isIntermediateSum propertyName:@"isIntermediateSum"];
}

-(void)setIsSum:(NSNumber *)isSum {
	NSNumber *oldValue = _isSum;
	_isSum = isSum;
	[self updateNSObject:oldValue newValue:isSum propertyName:@"isSum"];
}

-(void)setSliced:(NSNumber *)sliced {
	NSNumber *oldValue = _sliced;
	_sliced = sliced;
	[self updateNSObject:oldValue newValue:sliced propertyName:@"sliced"];
}

-(void)setTo:(NSString *)to {
	NSString *oldValue = _to;
	_to = to;
	[self updateNSObject:oldValue newValue:to propertyName:@"to"];
}

-(void)setFrom:(NSString *)from {
	NSString *oldValue = _from;
	_from = from;
	[self updateNSObject:oldValue newValue:from propertyName:@"from"];
}

-(void)setInnerRadius:(id)innerRadius {
	id oldValue = _innerRadius;
	_innerRadius = innerRadius;
	[self updateNSObject:oldValue newValue:innerRadius propertyName:@"innerRadius"];
}

-(void)setRadius:(id)radius {
	id oldValue = _radius;
	_radius = radius;
	[self updateNSObject:oldValue newValue:radius propertyName:@"radius"];
}

-(void)setOutgoing:(NSNumber *)outgoing {
	NSNumber *oldValue = _outgoing;
	_outgoing = outgoing;
	[self updateNSObject:oldValue newValue:outgoing propertyName:@"outgoing"];
}

-(void)setZ:(NSNumber *)z {
	NSNumber *oldValue = _z;
	_z = z;
	[self updateNSObject:oldValue newValue:z propertyName:@"z"];
}

-(void)setX2:(NSNumber *)x2 {
	NSNumber *oldValue = _x2;
	_x2 = x2;
	[self updateNSObject:oldValue newValue:x2 propertyName:@"x2"];
}

-(void)setPartialFill:(HIPartialFill *)partialFill {
	HIPartialFill *oldValue = _partialFill;
	_partialFill = partialFill;
	[self updateHIObject:oldValue newValue:partialFill propertyName:@"partialFill"];
}

-(void)setParent:(NSString *)parent {
	NSString *oldValue = _parent;
	_parent = parent;
	[self updateNSObject:oldValue newValue:parent propertyName:@"parent"];
}

-(void)setColorValue:(NSNumber *)colorValue {
	NSNumber *oldValue = _colorValue;
	_colorValue = colorValue;
	[self updateNSObject:oldValue newValue:colorValue propertyName:@"colorValue"];
}

-(void)setSets:(NSArray<NSString *> *)sets {
	NSArray<NSString *> *oldValue = _sets;
	_sets = sets;
	[self updateArrayObject:oldValue newValue:sets propertyName:@"sets"];
}

@end