#import "HIChartsJSONSerializableSubclass.h"
#import "HILang.h"

@implementation HILang

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILang *copyLang = [[HILang allocWithZone: zone] init];
	copyLang.downloadCSV = [self.downloadCSV copyWithZone: zone];
	copyLang.downloadXLS = [self.downloadXLS copyWithZone: zone];
	copyLang.downloadPNG = [self.downloadPNG copyWithZone: zone];
	copyLang.accessibility = [self.accessibility copyWithZone: zone];
	copyLang.hideData = [self.hideData copyWithZone: zone];
	copyLang.shortWeekdays = [self.shortWeekdays copyWithZone: zone];
	copyLang.exportData = [self.exportData copyWithZone: zone];
	copyLang.viewFullscreen = [self.viewFullscreen copyWithZone: zone];
	copyLang.noData = [self.noData copyWithZone: zone];
	copyLang.mainBreadcrumb = [self.mainBreadcrumb copyWithZone: zone];
	copyLang.loading = [self.loading copyWithZone: zone];
	copyLang.numericSymbols = [self.numericSymbols copyWithZone: zone];
	copyLang.printChart = [self.printChart copyWithZone: zone];
	copyLang.numericSymbolMagnitude = [self.numericSymbolMagnitude copyWithZone: zone];
	copyLang.weekdays = [self.weekdays copyWithZone: zone];
	copyLang.downloadSVG = [self.downloadSVG copyWithZone: zone];
	copyLang.drillUpText = [self.drillUpText copyWithZone: zone];
	copyLang.viewData = [self.viewData copyWithZone: zone];
	copyLang.contextButtonTitle = [self.contextButtonTitle copyWithZone: zone];
	copyLang.invalidDate = [self.invalidDate copyWithZone: zone];
	copyLang.exitFullscreen = [self.exitFullscreen copyWithZone: zone];
	copyLang.resetZoom = [self.resetZoom copyWithZone: zone];
	copyLang.downloadPDF = [self.downloadPDF copyWithZone: zone];
	copyLang.resetZoomTitle = [self.resetZoomTitle copyWithZone: zone];
	copyLang.months = [self.months copyWithZone: zone];
	copyLang.shortMonths = [self.shortMonths copyWithZone: zone];
	copyLang.downloadJPEG = [self.downloadJPEG copyWithZone: zone];
	copyLang.decimalPoint = [self.decimalPoint copyWithZone: zone];
	copyLang.navigation = [self.navigation copyWithZone: zone];
	copyLang.thousandsSep = [self.thousandsSep copyWithZone: zone];
	return copyLang;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.downloadCSV) {
		params[@"downloadCSV"] = self.downloadCSV;
	}
	if (self.downloadXLS) {
		params[@"downloadXLS"] = self.downloadXLS;
	}
	if (self.downloadPNG) {
		params[@"downloadPNG"] = self.downloadPNG;
	}
	if (self.accessibility) {
		params[@"accessibility"] = [self.accessibility getParams];
	}
	if (self.hideData) {
		params[@"hideData"] = self.hideData;
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
	if (self.exportData) {
		params[@"exportData"] = [self.exportData getParams];
	}
	if (self.viewFullscreen) {
		params[@"viewFullscreen"] = self.viewFullscreen;
	}
	if (self.noData) {
		params[@"noData"] = self.noData;
	}
	if (self.mainBreadcrumb) {
		params[@"mainBreadcrumb"] = self.mainBreadcrumb;
	}
	if (self.loading) {
		params[@"loading"] = self.loading;
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
	if (self.printChart) {
		params[@"printChart"] = self.printChart;
	}
	if (self.numericSymbolMagnitude) {
		params[@"numericSymbolMagnitude"] = self.numericSymbolMagnitude;
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
	if (self.downloadSVG) {
		params[@"downloadSVG"] = self.downloadSVG;
	}
	if (self.drillUpText) {
		params[@"drillUpText"] = self.drillUpText;
	}
	if (self.viewData) {
		params[@"viewData"] = self.viewData;
	}
	if (self.contextButtonTitle) {
		params[@"contextButtonTitle"] = self.contextButtonTitle;
	}
	if (self.invalidDate) {
		params[@"invalidDate"] = self.invalidDate;
	}
	if (self.exitFullscreen) {
		params[@"exitFullscreen"] = self.exitFullscreen;
	}
	if (self.resetZoom) {
		params[@"resetZoom"] = self.resetZoom;
	}
	if (self.downloadPDF) {
		params[@"downloadPDF"] = self.downloadPDF;
	}
	if (self.resetZoomTitle) {
		params[@"resetZoomTitle"] = self.resetZoomTitle;
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
	if (self.downloadJPEG) {
		params[@"downloadJPEG"] = self.downloadJPEG;
	}
	if (self.decimalPoint) {
		params[@"decimalPoint"] = self.decimalPoint;
	}
	if (self.navigation) {
		params[@"navigation"] = [self.navigation getParams];
	}
	if (self.thousandsSep) {
		params[@"thousandsSep"] = self.thousandsSep;
	}
	return params;
}

# pragma mark - Setters

-(void)setDownloadCSV:(NSString *)downloadCSV {
	NSString *oldValue = _downloadCSV;
	_downloadCSV = downloadCSV;
	[self updateNSObject:oldValue newValue:downloadCSV propertyName:@"downloadCSV"];
}

-(void)setDownloadXLS:(NSString *)downloadXLS {
	NSString *oldValue = _downloadXLS;
	_downloadXLS = downloadXLS;
	[self updateNSObject:oldValue newValue:downloadXLS propertyName:@"downloadXLS"];
}

-(void)setDownloadPNG:(NSString *)downloadPNG {
	NSString *oldValue = _downloadPNG;
	_downloadPNG = downloadPNG;
	[self updateNSObject:oldValue newValue:downloadPNG propertyName:@"downloadPNG"];
}

-(void)setAccessibility:(HIAccessibility *)accessibility {
	HIAccessibility *oldValue = _accessibility;
	_accessibility = accessibility;
	[self updateHIObject:oldValue newValue:accessibility propertyName:@"accessibility"];
}

-(void)setHideData:(NSString *)hideData {
	NSString *oldValue = _hideData;
	_hideData = hideData;
	[self updateNSObject:oldValue newValue:hideData propertyName:@"hideData"];
}

-(void)setShortWeekdays:(NSArray<NSString *> *)shortWeekdays {
	NSArray<NSString *> *oldValue = _shortWeekdays;
	_shortWeekdays = shortWeekdays;
	[self updateArrayObject:oldValue newValue:shortWeekdays propertyName:@"shortWeekdays"];
}

-(void)setExportData:(HIExportData *)exportData {
	HIExportData *oldValue = _exportData;
	_exportData = exportData;
	[self updateHIObject:oldValue newValue:exportData propertyName:@"exportData"];
}

-(void)setViewFullscreen:(NSString *)viewFullscreen {
	NSString *oldValue = _viewFullscreen;
	_viewFullscreen = viewFullscreen;
	[self updateNSObject:oldValue newValue:viewFullscreen propertyName:@"viewFullscreen"];
}

-(void)setNoData:(NSString *)noData {
	NSString *oldValue = _noData;
	_noData = noData;
	[self updateNSObject:oldValue newValue:noData propertyName:@"noData"];
}

-(void)setMainBreadcrumb:(NSString *)mainBreadcrumb {
	NSString *oldValue = _mainBreadcrumb;
	_mainBreadcrumb = mainBreadcrumb;
	[self updateNSObject:oldValue newValue:mainBreadcrumb propertyName:@"mainBreadcrumb"];
}

-(void)setLoading:(NSString *)loading {
	NSString *oldValue = _loading;
	_loading = loading;
	[self updateNSObject:oldValue newValue:loading propertyName:@"loading"];
}

-(void)setNumericSymbols:(NSArray<NSString *> *)numericSymbols {
	NSArray<NSString *> *oldValue = _numericSymbols;
	_numericSymbols = numericSymbols;
	[self updateArrayObject:oldValue newValue:numericSymbols propertyName:@"numericSymbols"];
}

-(void)setPrintChart:(NSString *)printChart {
	NSString *oldValue = _printChart;
	_printChart = printChart;
	[self updateNSObject:oldValue newValue:printChart propertyName:@"printChart"];
}

-(void)setNumericSymbolMagnitude:(NSNumber *)numericSymbolMagnitude {
	NSNumber *oldValue = _numericSymbolMagnitude;
	_numericSymbolMagnitude = numericSymbolMagnitude;
	[self updateNSObject:oldValue newValue:numericSymbolMagnitude propertyName:@"numericSymbolMagnitude"];
}

-(void)setWeekdays:(NSArray<NSString *> *)weekdays {
	NSArray<NSString *> *oldValue = _weekdays;
	_weekdays = weekdays;
	[self updateArrayObject:oldValue newValue:weekdays propertyName:@"weekdays"];
}

-(void)setDownloadSVG:(NSString *)downloadSVG {
	NSString *oldValue = _downloadSVG;
	_downloadSVG = downloadSVG;
	[self updateNSObject:oldValue newValue:downloadSVG propertyName:@"downloadSVG"];
}

-(void)setDrillUpText:(NSString *)drillUpText {
	NSString *oldValue = _drillUpText;
	_drillUpText = drillUpText;
	[self updateNSObject:oldValue newValue:drillUpText propertyName:@"drillUpText"];
}

-(void)setViewData:(NSString *)viewData {
	NSString *oldValue = _viewData;
	_viewData = viewData;
	[self updateNSObject:oldValue newValue:viewData propertyName:@"viewData"];
}

-(void)setContextButtonTitle:(NSString *)contextButtonTitle {
	NSString *oldValue = _contextButtonTitle;
	_contextButtonTitle = contextButtonTitle;
	[self updateNSObject:oldValue newValue:contextButtonTitle propertyName:@"contextButtonTitle"];
}

-(void)setInvalidDate:(NSString *)invalidDate {
	NSString *oldValue = _invalidDate;
	_invalidDate = invalidDate;
	[self updateNSObject:oldValue newValue:invalidDate propertyName:@"invalidDate"];
}

-(void)setExitFullscreen:(NSString *)exitFullscreen {
	NSString *oldValue = _exitFullscreen;
	_exitFullscreen = exitFullscreen;
	[self updateNSObject:oldValue newValue:exitFullscreen propertyName:@"exitFullscreen"];
}

-(void)setResetZoom:(NSString *)resetZoom {
	NSString *oldValue = _resetZoom;
	_resetZoom = resetZoom;
	[self updateNSObject:oldValue newValue:resetZoom propertyName:@"resetZoom"];
}

-(void)setDownloadPDF:(NSString *)downloadPDF {
	NSString *oldValue = _downloadPDF;
	_downloadPDF = downloadPDF;
	[self updateNSObject:oldValue newValue:downloadPDF propertyName:@"downloadPDF"];
}

-(void)setResetZoomTitle:(NSString *)resetZoomTitle {
	NSString *oldValue = _resetZoomTitle;
	_resetZoomTitle = resetZoomTitle;
	[self updateNSObject:oldValue newValue:resetZoomTitle propertyName:@"resetZoomTitle"];
}

-(void)setMonths:(NSArray<NSString *> *)months {
	NSArray<NSString *> *oldValue = _months;
	_months = months;
	[self updateArrayObject:oldValue newValue:months propertyName:@"months"];
}

-(void)setShortMonths:(NSArray<NSString *> *)shortMonths {
	NSArray<NSString *> *oldValue = _shortMonths;
	_shortMonths = shortMonths;
	[self updateArrayObject:oldValue newValue:shortMonths propertyName:@"shortMonths"];
}

-(void)setDownloadJPEG:(NSString *)downloadJPEG {
	NSString *oldValue = _downloadJPEG;
	_downloadJPEG = downloadJPEG;
	[self updateNSObject:oldValue newValue:downloadJPEG propertyName:@"downloadJPEG"];
}

-(void)setDecimalPoint:(NSString *)decimalPoint {
	NSString *oldValue = _decimalPoint;
	_decimalPoint = decimalPoint;
	[self updateNSObject:oldValue newValue:decimalPoint propertyName:@"decimalPoint"];
}

-(void)setNavigation:(HINavigation *)navigation {
	HINavigation *oldValue = _navigation;
	_navigation = navigation;
	[self updateHIObject:oldValue newValue:navigation propertyName:@"navigation"];
}

-(void)setThousandsSep:(NSString *)thousandsSep {
	NSString *oldValue = _thousandsSep;
	_thousandsSep = thousandsSep;
	[self updateNSObject:oldValue newValue:thousandsSep propertyName:@"thousandsSep"];
}

@end