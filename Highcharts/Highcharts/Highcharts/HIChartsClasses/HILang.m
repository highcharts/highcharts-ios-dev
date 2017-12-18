#import "HIChartsJSONSerializableSubclass.h"
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

# pragma mark - Setters

-(void)setResetZoom:(NSString *)resetZoom {
	_resetZoom = resetZoom;
	[self updateNSObject:@"resetZoom"];
}

-(void)setShortMonths:(NSArray<NSString *> *)shortMonths {
	NSArray<NSString *> *oldValue = _shortMonths;
	_shortMonths = shortMonths;
	[self updateArrayObject:oldValue newValue:shortMonths propertyName:@"shortMonths"];
}

-(void)setNumericSymbolMagnitude:(NSNumber *)numericSymbolMagnitude {
	_numericSymbolMagnitude = numericSymbolMagnitude;
	[self updateNSObject:@"numericSymbolMagnitude"];
}

-(void)setDrillUpText:(NSString *)drillUpText {
	_drillUpText = drillUpText;
	[self updateNSObject:@"drillUpText"];
}

-(void)setNoData:(NSString *)noData {
	_noData = noData;
	[self updateNSObject:@"noData"];
}

-(void)setDownloadPDF:(NSString *)downloadPDF {
	_downloadPDF = downloadPDF;
	[self updateNSObject:@"downloadPDF"];
}

-(void)setContextButtonTitle:(NSString *)contextButtonTitle {
	_contextButtonTitle = contextButtonTitle;
	[self updateNSObject:@"contextButtonTitle"];
}

-(void)setShortWeekdays:(NSArray<NSString *> *)shortWeekdays {
	NSArray<NSString *> *oldValue = _shortWeekdays;
	_shortWeekdays = shortWeekdays;
	[self updateArrayObject:oldValue newValue:shortWeekdays propertyName:@"shortWeekdays"];
}

-(void)setResetZoomTitle:(NSString *)resetZoomTitle {
	_resetZoomTitle = resetZoomTitle;
	[self updateNSObject:@"resetZoomTitle"];
}

-(void)setPrintChart:(NSString *)printChart {
	_printChart = printChart;
	[self updateNSObject:@"printChart"];
}

-(void)setMonths:(NSArray<NSString *> *)months {
	NSArray<NSString *> *oldValue = _months;
	_months = months;
	[self updateArrayObject:oldValue newValue:months propertyName:@"months"];
}

-(void)setDownloadSVG:(NSString *)downloadSVG {
	_downloadSVG = downloadSVG;
	[self updateNSObject:@"downloadSVG"];
}

-(void)setInvalidDate:(NSString *)invalidDate {
	_invalidDate = invalidDate;
	[self updateNSObject:@"invalidDate"];
}

-(void)setDownloadXLS:(NSString *)downloadXLS {
	_downloadXLS = downloadXLS;
	[self updateNSObject:@"downloadXLS"];
}

-(void)setDownloadJPEG:(NSString *)downloadJPEG {
	_downloadJPEG = downloadJPEG;
	[self updateNSObject:@"downloadJPEG"];
}

-(void)setDownloadPNG:(NSString *)downloadPNG {
	_downloadPNG = downloadPNG;
	[self updateNSObject:@"downloadPNG"];
}

-(void)setNumericSymbols:(NSArray<NSString *> *)numericSymbols {
	NSArray<NSString *> *oldValue = _numericSymbols;
	_numericSymbols = numericSymbols;
	[self updateArrayObject:oldValue newValue:numericSymbols propertyName:@"numericSymbols"];
}

-(void)setDownloadCSV:(NSString *)downloadCSV {
	_downloadCSV = downloadCSV;
	[self updateNSObject:@"downloadCSV"];
}

-(void)setWeekdays:(NSArray<NSString *> *)weekdays {
	NSArray<NSString *> *oldValue = _weekdays;
	_weekdays = weekdays;
	[self updateArrayObject:oldValue newValue:weekdays propertyName:@"weekdays"];
}

-(void)setViewData:(NSString *)viewData {
	_viewData = viewData;
	[self updateNSObject:@"viewData"];
}

-(void)setLoading:(NSString *)loading {
	_loading = loading;
	[self updateNSObject:@"loading"];
}

-(void)setDecimalPoint:(NSString *)decimalPoint {
	_decimalPoint = decimalPoint;
	[self updateNSObject:@"decimalPoint"];
}

-(void)setThousandsSep:(NSString *)thousandsSep {
	_thousandsSep = thousandsSep;
	[self updateNSObject:@"thousandsSep"];
}

@end