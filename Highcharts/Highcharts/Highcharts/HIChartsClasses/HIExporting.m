#import "HIChartsJSONSerializableSubclass.h"
#import "HIExporting.h"

@implementation HIExporting

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIExporting *copyExporting = [[HIExporting allocWithZone: zone] init];
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
	copyExporting.chartOptions = [self.chartOptions copyWithZone: zone];
	copyExporting.formAttributes = [self.formAttributes copyWithZone: zone];
	copyExporting.fallbackToExportServer = [self.fallbackToExportServer copyWithZone: zone];
	copyExporting.useRowspanHeaders = [self.useRowspanHeaders copyWithZone: zone];
	copyExporting.useMultiLevelHeaders = [self.useMultiLevelHeaders copyWithZone: zone];
	copyExporting.url = [self.url copyWithZone: zone];
	copyExporting.enabled = [self.enabled copyWithZone: zone];
	copyExporting.allowHTML = [self.allowHTML copyWithZone: zone];
	copyExporting.tableCaption = [self.tableCaption copyWithZone: zone];
	copyExporting.error = [self.error copyWithZone: zone];
	copyExporting.libURL = [self.libURL copyWithZone: zone];
	copyExporting.exportRegionLabel = [self.exportRegionLabel copyWithZone: zone];
	copyExporting.menuButtonLabel = [self.menuButtonLabel copyWithZone: zone];
	copyExporting.chartMenuLabel = [self.chartMenuLabel copyWithZone: zone];
	return copyExporting;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
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
	if (self.chartOptions) {
		params[@"chartOptions"] = self.chartOptions;
	}
	if (self.formAttributes) {
		params[@"formAttributes"] = self.formAttributes;
	}
	if (self.fallbackToExportServer) {
		params[@"fallbackToExportServer"] = self.fallbackToExportServer;
	}
	if (self.useRowspanHeaders) {
		params[@"useRowspanHeaders"] = self.useRowspanHeaders;
	}
	if (self.useMultiLevelHeaders) {
		params[@"useMultiLevelHeaders"] = self.useMultiLevelHeaders;
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
	if (self.tableCaption) {
		params[@"tableCaption"] = self.tableCaption;
	}
	if (self.error) {
		params[@"error"] = [self.error getFunction];
	}
	if (self.libURL) {
		params[@"libURL"] = self.libURL;
	}
	if (self.exportRegionLabel) {
		params[@"exportRegionLabel"] = self.exportRegionLabel;
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

-(void)setMenuItemDefinitions:(id)menuItemDefinitions {
	_menuItemDefinitions = menuItemDefinitions;
	[self updateNSObject:@"menuItemDefinitions"];
}

-(void)setSourceHeight:(NSNumber *)sourceHeight {
	_sourceHeight = sourceHeight;
	[self updateNSObject:@"sourceHeight"];
}

-(void)setSourceWidth:(NSNumber *)sourceWidth {
	_sourceWidth = sourceWidth;
	[self updateNSObject:@"sourceWidth"];
}

-(void)setScale:(NSNumber *)scale {
	_scale = scale;
	[self updateNSObject:@"scale"];
}

-(void)setShowTable:(NSNumber *)showTable {
	_showTable = showTable;
	[self updateNSObject:@"showTable"];
}

-(void)setFilename:(NSString *)filename {
	_filename = filename;
	[self updateNSObject:@"filename"];
}

-(void)setButtons:(HIButtons *)buttons {
	HIButtons *oldValue = _buttons;
	if(self.buttons) {
		[self removeObserver:self forKeyPath:@"buttons.isUpdated"];
	}
	_buttons = buttons;
	[self updateHIObject:oldValue newValue:buttons propertyName:@"buttons"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setPrintMaxWidth:(NSNumber *)printMaxWidth {
	_printMaxWidth = printMaxWidth;
	[self updateNSObject:@"printMaxWidth"];
}

-(void)setCsv:(HICsv *)csv {
	HICsv *oldValue = _csv;
	if(self.csv) {
		[self removeObserver:self forKeyPath:@"csv.isUpdated"];
	}
	_csv = csv;
	[self updateHIObject:oldValue newValue:csv propertyName:@"csv"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

-(void)setChartOptions:(id)chartOptions {
	_chartOptions = chartOptions;
	[self updateNSObject:@"chartOptions"];
}

-(void)setFormAttributes:(id)formAttributes {
	_formAttributes = formAttributes;
	[self updateNSObject:@"formAttributes"];
}

-(void)setFallbackToExportServer:(NSNumber *)fallbackToExportServer {
	_fallbackToExportServer = fallbackToExportServer;
	[self updateNSObject:@"fallbackToExportServer"];
}

-(void)setUseRowspanHeaders:(NSNumber *)useRowspanHeaders {
	_useRowspanHeaders = useRowspanHeaders;
	[self updateNSObject:@"useRowspanHeaders"];
}

-(void)setUseMultiLevelHeaders:(NSNumber *)useMultiLevelHeaders {
	_useMultiLevelHeaders = useMultiLevelHeaders;
	[self updateNSObject:@"useMultiLevelHeaders"];
}

-(void)setUrl:(NSString *)url {
	_url = url;
	[self updateNSObject:@"url"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setAllowHTML:(NSNumber *)allowHTML {
	_allowHTML = allowHTML;
	[self updateNSObject:@"allowHTML"];
}

-(void)setTableCaption:(id)tableCaption {
	_tableCaption = tableCaption;
	[self updateNSObject:@"tableCaption"];
}

-(void)setError:(HIFunction *)error {
	HIFunction *oldValue = _error;
	if(self.error) {
		[self removeObserver:self forKeyPath:@"error.isUpdated"];
	}
	_error = error;
	[self updateHIObject:oldValue newValue:error propertyName:@"error"];
}

-(void)setLibURL:(NSString *)libURL {
	_libURL = libURL;
	[self updateNSObject:@"libURL"];
}

-(void)setExportRegionLabel:(NSString *)exportRegionLabel {
	_exportRegionLabel = exportRegionLabel;
	[self updateNSObject:@"exportRegionLabel"];
}

-(void)setMenuButtonLabel:(NSString *)menuButtonLabel {
	_menuButtonLabel = menuButtonLabel;
	[self updateNSObject:@"menuButtonLabel"];
}

-(void)setChartMenuLabel:(NSString *)chartMenuLabel {
	_chartMenuLabel = chartMenuLabel;
	[self updateNSObject:@"chartMenuLabel"];
}

@end