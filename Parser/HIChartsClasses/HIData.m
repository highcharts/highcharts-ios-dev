#import "HIChartsJSONSerializableSubclass.h"
#import "HIData.h"

@implementation HIData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.parseDate) {
		params[@"parseDate"] = [self.parseDate getFunction];
	}
	if (self.firstRowAsNames) {
		params[@"firstRowAsNames"] = self.firstRowAsNames;
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
	if (self.complete) {
		params[@"complete"] = [self.complete getFunction];
	}
	if (self.itemDelimiter) {
		params[@"itemDelimiter"] = self.itemDelimiter;
	}
	if (self.dateFormat) {
		params[@"dateFormat"] = self.dateFormat;
	}
	if (self.googleSpreadsheetWorksheet) {
		params[@"googleSpreadsheetWorksheet"] = self.googleSpreadsheetWorksheet;
	}
	if (self.googleSpreadsheetKey) {
		params[@"googleSpreadsheetKey"] = self.googleSpreadsheetKey;
	}
	if (self.switchRowsAndColumns) {
		params[@"switchRowsAndColumns"] = self.switchRowsAndColumns;
	}
	if (self.startRow) {
		params[@"startRow"] = self.startRow;
	}
	if (self.startColumn) {
		params[@"startColumn"] = self.startColumn;
	}
	if (self.endColumn) {
		params[@"endColumn"] = self.endColumn;
	}
	if (self.table) {
		params[@"table"] = self.table;
	}
	if (self.decimalPoint) {
		params[@"decimalPoint"] = self.decimalPoint;
	}
	if (self.lineDelimiter) {
		params[@"lineDelimiter"] = self.lineDelimiter;
	}
	if (self.csv) {
		params[@"csv"] = self.csv;
	}
	if (self.parsed) {
		params[@"parsed"] = [self.parsed getFunction];
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
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.id) {
		params[@"id"] = self.id;
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
	if (self.length) {
		params[@"length"] = self.length;
	}
	if (self.direction) {
		params[@"direction"] = self.direction;
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
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
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
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.outgoing) {
		params[@"outgoing"] = self.outgoing;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.weight) {
		params[@"weight"] = self.weight;
	}
	if (self.z) {
		params[@"z"] = self.z;
	}
	if (self.colorValue) {
		params[@"colorValue"] = self.colorValue;
	}
	if (self.parent) {
		params[@"parent"] = self.parent;
	}
	return params;
}

# pragma mark - Setters

-(void)setParseDate:(HIFunction *)parseDate {
	HIFunction *oldValue = _parseDate;
	if(self.parseDate) {
		[self removeObserver:self forKeyPath:@"parseDate.isUpdated"];
	}
	_parseDate = parseDate;
	[self updateHIObject:oldValue newValue:parseDate propertyName:@"parseDate"];
}

-(void)setFirstRowAsNames:(NSNumber *)firstRowAsNames {
	_firstRowAsNames = firstRowAsNames;
	[self updateNSObject:@"firstRowAsNames"];
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

-(void)setComplete:(HIFunction *)complete {
	HIFunction *oldValue = _complete;
	if(self.complete) {
		[self removeObserver:self forKeyPath:@"complete.isUpdated"];
	}
	_complete = complete;
	[self updateHIObject:oldValue newValue:complete propertyName:@"complete"];
}

-(void)setItemDelimiter:(NSString *)itemDelimiter {
	_itemDelimiter = itemDelimiter;
	[self updateNSObject:@"itemDelimiter"];
}

-(void)setDateFormat:(NSString *)dateFormat {
	_dateFormat = dateFormat;
	[self updateNSObject:@"dateFormat"];
}

-(void)setGoogleSpreadsheetWorksheet:(NSString *)googleSpreadsheetWorksheet {
	_googleSpreadsheetWorksheet = googleSpreadsheetWorksheet;
	[self updateNSObject:@"googleSpreadsheetWorksheet"];
}

-(void)setGoogleSpreadsheetKey:(NSString *)googleSpreadsheetKey {
	_googleSpreadsheetKey = googleSpreadsheetKey;
	[self updateNSObject:@"googleSpreadsheetKey"];
}

-(void)setSwitchRowsAndColumns:(NSNumber *)switchRowsAndColumns {
	_switchRowsAndColumns = switchRowsAndColumns;
	[self updateNSObject:@"switchRowsAndColumns"];
}

-(void)setStartRow:(NSNumber *)startRow {
	_startRow = startRow;
	[self updateNSObject:@"startRow"];
}

-(void)setStartColumn:(NSNumber *)startColumn {
	_startColumn = startColumn;
	[self updateNSObject:@"startColumn"];
}

-(void)setEndColumn:(NSNumber *)endColumn {
	_endColumn = endColumn;
	[self updateNSObject:@"endColumn"];
}

-(void)setTable:(id)table {
	_table = table;
	[self updateNSObject:@"table"];
}

-(void)setDecimalPoint:(NSString *)decimalPoint {
	_decimalPoint = decimalPoint;
	[self updateNSObject:@"decimalPoint"];
}

-(void)setLineDelimiter:(NSString *)lineDelimiter {
	_lineDelimiter = lineDelimiter;
	[self updateNSObject:@"lineDelimiter"];
}

-(void)setCsv:(NSString *)csv {
	_csv = csv;
	[self updateNSObject:@"csv"];
}

-(void)setParsed:(HIFunction *)parsed {
	HIFunction *oldValue = _parsed;
	if(self.parsed) {
		[self removeObserver:self forKeyPath:@"parsed.isUpdated"];
	}
	_parsed = parsed;
	[self updateHIObject:oldValue newValue:parsed propertyName:@"parsed"];
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

-(void)setEvents:(HIEvents *)events {
	HIEvents *oldValue = _events;
	if(self.events) {
		[self removeObserver:self forKeyPath:@"events.isUpdated"];
	}
	_events = events;
	[self updateHIObject:oldValue newValue:events propertyName:@"events"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setDrilldown:(NSString *)drilldown {
	_drilldown = drilldown;
	[self updateNSObject:@"drilldown"];
}

-(void)setId:(NSString *)id {
	_id = id;
	[self updateNSObject:@"id"];
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

-(void)setLength:(NSNumber *)length {
	_length = length;
	[self updateNSObject:@"length"];
}

-(void)setDirection:(NSNumber *)direction {
	_direction = direction;
	[self updateNSObject:@"direction"];
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

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setValue:(NSNumber *)value {
	_value = value;
	[self updateNSObject:@"value"];
}

-(void)setPointPadding:(NSNumber *)pointPadding {
	_pointPadding = pointPadding;
	[self updateNSObject:@"pointPadding"];
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

-(void)setInnerRadius:(id)innerRadius {
	_innerRadius = innerRadius;
	[self updateNSObject:@"innerRadius"];
}

-(void)setRadius:(id)radius {
	_radius = radius;
	[self updateNSObject:@"radius"];
}

-(void)setTo:(NSString *)to {
	_to = to;
	[self updateNSObject:@"to"];
}

-(void)setOutgoing:(NSNumber *)outgoing {
	_outgoing = outgoing;
	[self updateNSObject:@"outgoing"];
}

-(void)setFrom:(NSString *)from {
	_from = from;
	[self updateNSObject:@"from"];
}

-(void)setWeight:(NSNumber *)weight {
	_weight = weight;
	[self updateNSObject:@"weight"];
}

-(void)setZ:(NSNumber *)z {
	_z = z;
	[self updateNSObject:@"z"];
}

-(void)setColorValue:(NSNumber *)colorValue {
	_colorValue = colorValue;
	[self updateNSObject:@"colorValue"];
}

-(void)setParent:(NSString *)parent {
	_parent = parent;
	[self updateNSObject:@"parent"];
}

@end