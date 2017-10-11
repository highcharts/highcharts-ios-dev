#import "HIData.h"

@implementation HIData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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
	if (self.endRow) {
		params[@"endRow"] = self.endRow;
	}
	if (self.csv) {
		params[@"csv"] = self.csv;
	}
	if (self.startRow) {
		params[@"startRow"] = self.startRow;
	}
	if (self.firstRowAsNames) {
		params[@"firstRowAsNames"] = self.firstRowAsNames;
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
	if (self.endColumn) {
		params[@"endColumn"] = self.endColumn;
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
	if (self.decimalPoint) {
		params[@"decimalPoint"] = self.decimalPoint;
	}
	if (self.parsed) {
		params[@"parsed"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.parsed];
	}
	if (self.googleSpreadsheetWorksheet) {
		params[@"googleSpreadsheetWorksheet"] = self.googleSpreadsheetWorksheet;
	}
	if (self.table) {
		params[@"table"] = self.table;
	}
	if (self.lineDelimiter) {
		params[@"lineDelimiter"] = self.lineDelimiter;
	}
	if (self.dateFormat) {
		params[@"dateFormat"] = self.dateFormat;
	}
	if (self.googleSpreadsheetKey) {
		params[@"googleSpreadsheetKey"] = self.googleSpreadsheetKey;
	}
	if (self.complete) {
		params[@"complete"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.complete];
	}
	if (self.parseDate) {
		params[@"parseDate"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.parseDate];
	}
	if (self.switchRowsAndColumns) {
		params[@"switchRowsAndColumns"] = self.switchRowsAndColumns;
	}
	if (self.itemDelimiter) {
		params[@"itemDelimiter"] = self.itemDelimiter;
	}
	if (self.startColumn) {
		params[@"startColumn"] = self.startColumn;
	}
	return params;
}

@end