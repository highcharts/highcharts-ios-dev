#import "Data.h"

@implementation Data

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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
	if (self.table) {
		params[@"table"] = self.table;
	}
	if (self.googleSpreadsheetKey) {
		params[@"googleSpreadsheetKey"] = self.googleSpreadsheetKey;
	}
	if (self.endColumn) {
		params[@"endColumn"] = self.endColumn;
	}
	if (self.parseDate) {
		params[@"parseDate"] = self.parseDate;
	}
	if (self.endRow) {
		params[@"endRow"] = self.endRow;
	}
	if (self.csv) {
		params[@"csv"] = self.csv;
	}
	if (self.startRow) {
		params[@"startRow"] = self.startRow;
	}
	if (self.complete) {
		params[@"complete"] = self.complete;
	}
	if (self.dateFormat) {
		params[@"dateFormat"] = self.dateFormat;
	}
	if (self.switchRowsAndColumns) {
		params[@"switchRowsAndColumns"] = self.switchRowsAndColumns;
	}
	if (self.decimalPoint) {
		params[@"decimalPoint"] = self.decimalPoint;
	}
	if (self.startColumn) {
		params[@"startColumn"] = self.startColumn;
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
	if (self.itemDelimiter) {
		params[@"itemDelimiter"] = self.itemDelimiter;
	}
	if (self.firstRowAsNames) {
		params[@"firstRowAsNames"] = self.firstRowAsNames;
	}
	if (self.googleSpreadsheetWorksheet) {
		params[@"googleSpreadsheetWorksheet"] = self.googleSpreadsheetWorksheet;
	}
	if (self.parsed) {
		params[@"parsed"] = self.parsed;
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
	if (self.lineDelimiter) {
		params[@"lineDelimiter"] = self.lineDelimiter;
	}
	return params;
}

@end