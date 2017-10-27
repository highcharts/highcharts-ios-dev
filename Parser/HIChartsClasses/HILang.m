#import "HILang.h"

@implementation HILang

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.resetZoom) {
		params[@"resetZoom"] = self.resetZoom;
	}
	if (self.shortMonths) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.shortMonths) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"shortMonths"] = array;
	}
	if (self.numericSymbolMagnitude) {
		params[@"numericSymbolMagnitude"] = self.numericSymbolMagnitude;
	}
	if (self.drillUpText) {
		params[@"drillUpText"] = self.drillUpText;
	}
	if (self.noData) {
		params[@"noData"] = self.noData;
	}
	if (self.downloadPDF) {
		params[@"downloadPDF"] = self.downloadPDF;
	}
	if (self.contextButtonTitle) {
		params[@"contextButtonTitle"] = self.contextButtonTitle;
	}
	if (self.shortWeekdays) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.shortWeekdays) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"shortWeekdays"] = array;
	}
	if (self.resetZoomTitle) {
		params[@"resetZoomTitle"] = self.resetZoomTitle;
	}
	if (self.printChart) {
		params[@"printChart"] = self.printChart;
	}
	if (self.months) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.months) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"months"] = array;
	}
	if (self.downloadSVG) {
		params[@"downloadSVG"] = self.downloadSVG;
	}
	if (self.invalidDate) {
		params[@"invalidDate"] = self.invalidDate;
	}
	if (self.downloadXLS) {
		params[@"downloadXLS"] = self.downloadXLS;
	}
	if (self.downloadJPEG) {
		params[@"downloadJPEG"] = self.downloadJPEG;
	}
	if (self.downloadPNG) {
		params[@"downloadPNG"] = self.downloadPNG;
	}
	if (self.numericSymbols) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.numericSymbols) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"numericSymbols"] = array;
	}
	if (self.downloadCSV) {
		params[@"downloadCSV"] = self.downloadCSV;
	}
	if (self.weekdays) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.weekdays) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"weekdays"] = array;
	}
	if (self.viewData) {
		params[@"viewData"] = self.viewData;
	}
	if (self.loading) {
		params[@"loading"] = self.loading;
	}
	if (self.decimalPoint) {
		params[@"decimalPoint"] = self.decimalPoint;
	}
	if (self.thousandsSep) {
		params[@"thousandsSep"] = self.thousandsSep;
	}
	return params;
}

@end