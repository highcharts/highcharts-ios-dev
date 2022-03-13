#import "HIChartsJSONSerializableSubclass.h"
#import "HIExporting.h"

@implementation HIExporting

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIExporting *copyExporting = [[HIExporting allocWithZone: zone] init];
	copyExporting.accessibility = [self.accessibility copyWithZone: zone];
	copyExporting.menuItemDefinitions = [self.menuItemDefinitions copyWithZone: zone];
	copyExporting.sourceHeight = [self.sourceHeight copyWithZone: zone];
	copyExporting.sourceWidth = [self.sourceWidth copyWithZone: zone];
	copyExporting.scale = [self.scale copyWithZone: zone];
	copyExporting.showTable = [self.showTable copyWithZone: zone];
	copyExporting.filename = [self.filename copyWithZone: zone];
	copyExporting.buttons = [self.buttons copyWithZone: zone];
	copyExporting.width = [self.width copyWithZone: zone];
	copyExporting.printMaxWidth = [self.printMaxWidth copyWithZone: zone];
	copyExporting.csv = [self.csv copyWithZone: zone];
	copyExporting.type = [self.type copyWithZone: zone];
	copyExporting.tableCaption = [self.tableCaption copyWithZone: zone];
	copyExporting.formAttributes = [self.formAttributes copyWithZone: zone];
	copyExporting.useMultiLevelHeaders = [self.useMultiLevelHeaders copyWithZone: zone];
	copyExporting.useRowspanHeaders = [self.useRowspanHeaders copyWithZone: zone];
	copyExporting.fallbackToExportServer = [self.fallbackToExportServer copyWithZone: zone];
	copyExporting.url = [self.url copyWithZone: zone];
	copyExporting.enabled = [self.enabled copyWithZone: zone];
	copyExporting.allowHTML = [self.allowHTML copyWithZone: zone];
	copyExporting.pdfFont = [self.pdfFont copyWithZone: zone];
	copyExporting.chartOptions = [self.chartOptions copyWithZone: zone];
	copyExporting.error = [self.error copyWithZone: zone];
	copyExporting.libURL = [self.libURL copyWithZone: zone];
	copyExporting.menuButtonLabel = [self.menuButtonLabel copyWithZone: zone];
	copyExporting.chartMenuLabel = [self.chartMenuLabel copyWithZone: zone];
	return copyExporting;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.accessibility) {
		params[@"accessibility"] = [self.accessibility getParams];
	}
	if (self.menuItemDefinitions) {
		params[@"menuItemDefinitions"] = self.menuItemDefinitions;
	}
	if (self.sourceHeight) {
		params[@"sourceHeight"] = self.sourceHeight;
	}
	if (self.sourceWidth) {
		params[@"sourceWidth"] = self.sourceWidth;
	}
	if (self.scale) {
		params[@"scale"] = self.scale;
	}
	if (self.showTable) {
		params[@"showTable"] = self.showTable;
	}
	if (self.filename) {
		params[@"filename"] = self.filename;
	}
	if (self.buttons) {
		params[@"buttons"] = [self.buttons getParams];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.printMaxWidth) {
		params[@"printMaxWidth"] = self.printMaxWidth;
	}
	if (self.csv) {
		params[@"csv"] = [self.csv getParams];
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.tableCaption) {
		params[@"tableCaption"] = self.tableCaption;
	}
	if (self.formAttributes) {
		params[@"formAttributes"] = [self.formAttributes getParams];
	}
	if (self.useMultiLevelHeaders) {
		params[@"useMultiLevelHeaders"] = self.useMultiLevelHeaders;
	}
	if (self.useRowspanHeaders) {
		params[@"useRowspanHeaders"] = self.useRowspanHeaders;
	}
	if (self.fallbackToExportServer) {
		params[@"fallbackToExportServer"] = self.fallbackToExportServer;
	}
	if (self.url) {
		params[@"url"] = self.url;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.allowHTML) {
		params[@"allowHTML"] = self.allowHTML;
	}
	if (self.pdfFont) {
		params[@"pdfFont"] = [self.pdfFont getParams];
	}
	if (self.chartOptions) {
		params[@"chartOptions"] = self.chartOptions;
	}
	if (self.error) {
		params[@"error"] = [self.error getFunction];
	}
	if (self.libURL) {
		params[@"libURL"] = self.libURL;
	}
	if (self.menuButtonLabel) {
		params[@"menuButtonLabel"] = self.menuButtonLabel;
	}
	if (self.chartMenuLabel) {
		params[@"chartMenuLabel"] = self.chartMenuLabel;
	}
	return params;
}

# pragma mark - Setters

-(void)setAccessibility:(HIAccessibility *)accessibility {
	HIAccessibility *oldValue = _accessibility;
	_accessibility = accessibility;
	[self updateHIObject:oldValue newValue:accessibility propertyName:@"accessibility"];
}

-(void)setMenuItemDefinitions:(id)menuItemDefinitions {
	id oldValue = _menuItemDefinitions;
	_menuItemDefinitions = menuItemDefinitions;
	[self updateNSObject:oldValue newValue:menuItemDefinitions propertyName:@"menuItemDefinitions"];
}

-(void)setSourceHeight:(NSNumber *)sourceHeight {
	NSNumber *oldValue = _sourceHeight;
	_sourceHeight = sourceHeight;
	[self updateNSObject:oldValue newValue:sourceHeight propertyName:@"sourceHeight"];
}

-(void)setSourceWidth:(NSNumber *)sourceWidth {
	NSNumber *oldValue = _sourceWidth;
	_sourceWidth = sourceWidth;
	[self updateNSObject:oldValue newValue:sourceWidth propertyName:@"sourceWidth"];
}

-(void)setScale:(NSNumber *)scale {
	NSNumber *oldValue = _scale;
	_scale = scale;
	[self updateNSObject:oldValue newValue:scale propertyName:@"scale"];
}

-(void)setShowTable:(NSNumber *)showTable {
	NSNumber *oldValue = _showTable;
	_showTable = showTable;
	[self updateNSObject:oldValue newValue:showTable propertyName:@"showTable"];
}

-(void)setFilename:(NSString *)filename {
	NSString *oldValue = _filename;
	_filename = filename;
	[self updateNSObject:oldValue newValue:filename propertyName:@"filename"];
}

-(void)setButtons:(HIButtons *)buttons {
	HIButtons *oldValue = _buttons;
	_buttons = buttons;
	[self updateHIObject:oldValue newValue:buttons propertyName:@"buttons"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setPrintMaxWidth:(NSNumber *)printMaxWidth {
	NSNumber *oldValue = _printMaxWidth;
	_printMaxWidth = printMaxWidth;
	[self updateNSObject:oldValue newValue:printMaxWidth propertyName:@"printMaxWidth"];
}

-(void)setCsv:(HICsv *)csv {
	HICsv *oldValue = _csv;
	_csv = csv;
	[self updateHIObject:oldValue newValue:csv propertyName:@"csv"];
}

-(void)setType:(NSString *)type {
	NSString *oldValue = _type;
	_type = type;
	[self updateNSObject:oldValue newValue:type propertyName:@"type"];
}

-(void)setTableCaption:(id)tableCaption {
	id oldValue = _tableCaption;
	_tableCaption = tableCaption;
	[self updateNSObject:oldValue newValue:tableCaption propertyName:@"tableCaption"];
}

-(void)setFormAttributes:(HIHTMLAttributes *)formAttributes {
	HIHTMLAttributes *oldValue = _formAttributes;
	_formAttributes = formAttributes;
	[self updateHIObject:oldValue newValue:formAttributes propertyName:@"formAttributes"];
}

-(void)setUseMultiLevelHeaders:(NSNumber *)useMultiLevelHeaders {
	NSNumber *oldValue = _useMultiLevelHeaders;
	_useMultiLevelHeaders = useMultiLevelHeaders;
	[self updateNSObject:oldValue newValue:useMultiLevelHeaders propertyName:@"useMultiLevelHeaders"];
}

-(void)setUseRowspanHeaders:(NSNumber *)useRowspanHeaders {
	NSNumber *oldValue = _useRowspanHeaders;
	_useRowspanHeaders = useRowspanHeaders;
	[self updateNSObject:oldValue newValue:useRowspanHeaders propertyName:@"useRowspanHeaders"];
}

-(void)setFallbackToExportServer:(NSNumber *)fallbackToExportServer {
	NSNumber *oldValue = _fallbackToExportServer;
	_fallbackToExportServer = fallbackToExportServer;
	[self updateNSObject:oldValue newValue:fallbackToExportServer propertyName:@"fallbackToExportServer"];
}

-(void)setUrl:(NSString *)url {
	NSString *oldValue = _url;
	_url = url;
	[self updateNSObject:oldValue newValue:url propertyName:@"url"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setAllowHTML:(NSNumber *)allowHTML {
	NSNumber *oldValue = _allowHTML;
	_allowHTML = allowHTML;
	[self updateNSObject:oldValue newValue:allowHTML propertyName:@"allowHTML"];
}

-(void)setPdfFont:(HIPdfFont *)pdfFont {
	HIPdfFont *oldValue = _pdfFont;
	_pdfFont = pdfFont;
	[self updateHIObject:oldValue newValue:pdfFont propertyName:@"pdfFont"];
}

-(void)setChartOptions:(NSDictionary *)chartOptions {
	NSDictionary *oldValue = _chartOptions;
	_chartOptions = chartOptions;
	[self updateNSObject:oldValue newValue:chartOptions propertyName:@"chartOptions"];
}

-(void)setError:(HIFunction *)error {
	HIFunction *oldValue = _error;
	_error = error;
	[self updateHIObject:oldValue newValue:error propertyName:@"error"];
}

-(void)setLibURL:(NSString *)libURL {
	NSString *oldValue = _libURL;
	_libURL = libURL;
	[self updateNSObject:oldValue newValue:libURL propertyName:@"libURL"];
}

-(void)setMenuButtonLabel:(NSString *)menuButtonLabel {
	NSString *oldValue = _menuButtonLabel;
	_menuButtonLabel = menuButtonLabel;
	[self updateNSObject:oldValue newValue:menuButtonLabel propertyName:@"menuButtonLabel"];
}

-(void)setChartMenuLabel:(NSString *)chartMenuLabel {
	NSString *oldValue = _chartMenuLabel;
	_chartMenuLabel = chartMenuLabel;
	[self updateNSObject:oldValue newValue:chartMenuLabel propertyName:@"chartMenuLabel"];
}

@end