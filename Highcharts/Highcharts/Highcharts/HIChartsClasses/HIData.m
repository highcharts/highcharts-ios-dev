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
	copyData.weight = [self.weight copyWithZone: zone];
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
	if (self.weight) {
		params[@"weight"] = self.weight;
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
	_enablePolling = enablePolling;
	[self updateNSObject:@"enablePolling"];
}

-(void)setStartColumn:(NSNumber *)startColumn {
	_startColumn = startColumn;
	[self updateNSObject:@"startColumn"];
}

-(void)setLineDelimiter:(NSString *)lineDelimiter {
	_lineDelimiter = lineDelimiter;
	[self updateNSObject:@"lineDelimiter"];
}

-(void)setTable:(NSString *)table {
	_table = table;
	[self updateNSObject:@"table"];
}

-(void)setRowsURL:(NSString *)rowsURL {
	_rowsURL = rowsURL;
	[self updateNSObject:@"rowsURL"];
}

-(void)setParseDate:(HIFunction *)parseDate {
	HIFunction *oldValue = _parseDate;
	if(self.parseDate) {
		[self removeObserver:self forKeyPath:@"parseDate.isUpdated"];
	}
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
	_csvURL = csvURL;
	[self updateNSObject:@"csvURL"];
}

-(void)setDateFormat:(NSString *)dateFormat {
	_dateFormat = dateFormat;
	[self updateNSObject:@"dateFormat"];
}

-(void)setGoogleSpreadsheetWorksheet:(NSString *)googleSpreadsheetWorksheet {
	_googleSpreadsheetWorksheet = googleSpreadsheetWorksheet;
	[self updateNSObject:@"googleSpreadsheetWorksheet"];
}

-(void)setDataRefreshRate:(NSNumber *)dataRefreshRate {
	_dataRefreshRate = dataRefreshRate;
	[self updateNSObject:@"dataRefreshRate"];
}

-(void)setParsed:(HIFunction *)parsed {
	HIFunction *oldValue = _parsed;
	if(self.parsed) {
		[self removeObserver:self forKeyPath:@"parsed.isUpdated"];
	}
	_parsed = parsed;
	[self updateHIObject:oldValue newValue:parsed propertyName:@"parsed"];
}

-(void)setStartRow:(NSNumber *)startRow {
	_startRow = startRow;
	[self updateNSObject:@"startRow"];
}

-(void)setCsv:(NSString *)csv {
	_csv = csv;
	[self updateNSObject:@"csv"];
}

-(void)setColumns:(NSArray<NSArray *> *)columns {
	NSArray<NSArray *> *oldValue = _columns;
	_columns = columns;
	[self updateArrayObject:oldValue newValue:columns propertyName:@"columns"];
}

-(void)setEndRow:(NSNumber *)endRow {
	_endRow = endRow;
	[self updateNSObject:@"endRow"];
}

-(void)setItemDelimiter:(NSString *)itemDelimiter {
	_itemDelimiter = itemDelimiter;
	[self updateNSObject:@"itemDelimiter"];
}

-(void)setComplete:(HIFunction *)complete {
	HIFunction *oldValue = _complete;
	if(self.complete) {
		[self removeObserver:self forKeyPath:@"complete.isUpdated"];
	}
	_complete = complete;
	[self updateHIObject:oldValue newValue:complete propertyName:@"complete"];
}

-(void)setBeforeParse:(HIFunction *)beforeParse {
	HIFunction *oldValue = _beforeParse;
	if(self.beforeParse) {
		[self removeObserver:self forKeyPath:@"beforeParse.isUpdated"];
	}
	_beforeParse = beforeParse;
	[self updateHIObject:oldValue newValue:beforeParse propertyName:@"beforeParse"];
}

-(void)setEndColumn:(NSNumber *)endColumn {
	_endColumn = endColumn;
	[self updateNSObject:@"endColumn"];
}

-(void)setFirstRowAsNames:(NSNumber *)firstRowAsNames {
	_firstRowAsNames = firstRowAsNames;
	[self updateNSObject:@"firstRowAsNames"];
}

-(void)setGoogleSpreadsheetKey:(NSString *)googleSpreadsheetKey {
	_googleSpreadsheetKey = googleSpreadsheetKey;
	[self updateNSObject:@"googleSpreadsheetKey"];
}

-(void)setSwitchRowsAndColumns:(NSNumber *)switchRowsAndColumns {
	_switchRowsAndColumns = switchRowsAndColumns;
	[self updateNSObject:@"switchRowsAndColumns"];
}

-(void)setDecimalPoint:(NSString *)decimalPoint {
	_decimalPoint = decimalPoint;
	[self updateNSObject:@"decimalPoint"];
}

-(void)setColumnsURL:(NSString *)columnsURL {
	_columnsURL = columnsURL;
	[self updateNSObject:@"columnsURL"];
}

-(void)setHigh:(NSNumber *)high {
	_high = high;
	[self updateNSObject:@"high"];
}

-(void)setQ1:(NSNumber *)q1 {
	_q1 = q1;
	[self updateNSObject:@"q1"];
}

-(void)setQ3:(NSNumber *)q3 {
	_q3 = q3;
	[self updateNSObject:@"q3"];
}

-(void)setMedian:(NSNumber *)median {
	_median = median;
	[self updateNSObject:@"median"];
}

-(void)setLow:(NSNumber *)low {
	_low = low;
	[self updateNSObject:@"low"];
}

-(void)setLabelrank:(NSNumber *)labelrank {
	_labelrank = labelrank;
	[self updateNSObject:@"labelrank"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setDefinition:(NSString *)definition {
	_definition = definition;
	[self updateNSObject:@"definition"];
}

-(void)setName:(NSString *)name {
	_name = name;
	[self updateNSObject:@"name"];
}

-(void)setColor:(HIColor *)color {
	HIColor *oldValue = _color;
	if(self.color) {
		[self removeObserver:self forKeyPath:@"color.isUpdated"];
	}
	_color = color;
	[self updateHIObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setSelected:(NSNumber *)selected {
	_selected = selected;
	[self updateNSObject:@"selected"];
}

-(void)setDataLabels:(id)dataLabels {
	_dataLabels = dataLabels;
	[self updateNSObject:@"dataLabels"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setDragDrop:(HIDragDrop *)dragDrop {
	HIDragDrop *oldValue = _dragDrop;
	if(self.dragDrop) {
		[self removeObserver:self forKeyPath:@"dragDrop.isUpdated"];
	}
	_dragDrop = dragDrop;
	[self updateHIObject:oldValue newValue:dragDrop propertyName:@"dragDrop"];
}

-(void)setId:(NSString *)id {
	_id = id;
	[self updateNSObject:@"id"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setDrilldown:(NSString *)drilldown {
	_drilldown = drilldown;
	[self updateNSObject:@"drilldown"];
}

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	if(self.events) {
		[self removeObserver:self forKeyPath:@"events.isUpdated"];
	}
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setColorIndex:(NSNumber *)colorIndex {
	_colorIndex = colorIndex;
	[self updateNSObject:@"colorIndex"];
}

-(void)setLegendIndex:(NSNumber *)legendIndex {
	_legendIndex = legendIndex;
	[self updateNSObject:@"legendIndex"];
}

-(void)setMarker:(HIMarker *)marker {
	HIMarker *oldValue = _marker;
	if(self.marker) {
		[self removeObserver:self forKeyPath:@"marker.isUpdated"];
	}
	_marker = marker;
	[self updateHIObject:oldValue newValue:marker propertyName:@"marker"];
}

-(void)setDirection:(NSNumber *)direction {
	_direction = direction;
	[self updateNSObject:@"direction"];
}

-(void)setLength:(NSNumber *)length {
	_length = length;
	[self updateNSObject:@"length"];
}

-(void)setTarget:(NSNumber *)target {
	_target = target;
	[self updateNSObject:@"target"];
}

-(void)setTargetOptions:(HITargetOptions *)targetOptions {
	HITargetOptions *oldValue = _targetOptions;
	if(self.targetOptions) {
		[self removeObserver:self forKeyPath:@"targetOptions.isUpdated"];
	}
	_targetOptions = targetOptions;
	[self updateHIObject:oldValue newValue:targetOptions propertyName:@"targetOptions"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setPointWidth:(NSNumber *)pointWidth {
	_pointWidth = pointWidth;
	[self updateNSObject:@"pointWidth"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
}

-(void)setValue:(NSNumber *)value {
	_value = value;
	[self updateNSObject:@"value"];
}

-(void)setIsIntermediateSum:(NSNumber *)isIntermediateSum {
	_isIntermediateSum = isIntermediateSum;
	[self updateNSObject:@"isIntermediateSum"];
}

-(void)setIsSum:(NSNumber *)isSum {
	_isSum = isSum;
	[self updateNSObject:@"isSum"];
}

-(void)setSliced:(NSNumber *)sliced {
	_sliced = sliced;
	[self updateNSObject:@"sliced"];
}

-(void)setTo:(NSString *)to {
	_to = to;
	[self updateNSObject:@"to"];
}

-(void)setFrom:(NSString *)from {
	_from = from;
	[self updateNSObject:@"from"];
}

-(void)setWeight:(NSNumber *)weight {
	_weight = weight;
	[self updateNSObject:@"weight"];
}

-(void)setInnerRadius:(id)innerRadius {
	_innerRadius = innerRadius;
	[self updateNSObject:@"innerRadius"];
}

-(void)setRadius:(id)radius {
	_radius = radius;
	[self updateNSObject:@"radius"];
}

-(void)setOutgoing:(NSNumber *)outgoing {
	_outgoing = outgoing;
	[self updateNSObject:@"outgoing"];
}

-(void)setZ:(NSNumber *)z {
	_z = z;
	[self updateNSObject:@"z"];
}

-(void)setX2:(NSNumber *)x2 {
	_x2 = x2;
	[self updateNSObject:@"x2"];
}

-(void)setPartialFill:(HIPartialFill *)partialFill {
	HIPartialFill *oldValue = _partialFill;
	if(self.partialFill) {
		[self removeObserver:self forKeyPath:@"partialFill.isUpdated"];
	}
	_partialFill = partialFill;
	[self updateHIObject:oldValue newValue:partialFill propertyName:@"partialFill"];
}

-(void)setParent:(NSString *)parent {
	_parent = parent;
	[self updateNSObject:@"parent"];
}

-(void)setColorValue:(NSNumber *)colorValue {
	_colorValue = colorValue;
	[self updateNSObject:@"colorValue"];
}

-(void)setSets:(NSArray<NSString *> *)sets {
	NSArray<NSString *> *oldValue = _sets;
	_sets = sets;
	[self updateArrayObject:oldValue newValue:sets propertyName:@"sets"];
}

@end