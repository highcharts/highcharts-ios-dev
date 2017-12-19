#import "HIChartsJSONSerializableSubclass.h"
#import "HIExporting.h"

@implementation HIExporting

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.libURL) {
		params[@"libURL"] = self.libURL;
	}
	if (self.chartOptions) {
		params[@"chartOptions"] = self.chartOptions;
	}
	if (self.fallbackToExportServer) {
		params[@"fallbackToExportServer"] = self.fallbackToExportServer;
	}
	if (self.printMaxWidth) {
		params[@"printMaxWidth"] = self.printMaxWidth;
	}
	if (self.scale) {
		params[@"scale"] = self.scale;
	}
	if (self.formAttributes) {
		params[@"formAttributes"] = self.formAttributes;
	}
	if (self.url) {
		params[@"url"] = self.url;
	}
	if (self.useMultiLevelHeaders) {
		params[@"useMultiLevelHeaders"] = self.useMultiLevelHeaders;
	}
	if (self.buttons) {
		params[@"buttons"] = [self.buttons getParams];
	}
	if (self.allowHTML) {
		params[@"allowHTML"] = self.allowHTML;
	}
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.csv) {
		params[@"csv"] = [self.csv getParams];
	}
	if (self.sourceWidth) {
		params[@"sourceWidth"] = self.sourceWidth;
	}
	if (self.menuItemDefinitions) {
		params[@"menuItemDefinitions"] = self.menuItemDefinitions;
	}
	if (self.error) {
		params[@"error"] = [self.error getFunction];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.useRowspanHeaders) {
		params[@"useRowspanHeaders"] = self.useRowspanHeaders;
	}
	if (self.showTable) {
		params[@"showTable"] = self.showTable;
	}
	if (self.sourceHeight) {
		params[@"sourceHeight"] = self.sourceHeight;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.filename) {
		params[@"filename"] = self.filename;
	}
	if (self.tableCaption) {
		params[@"tableCaption"] = self.tableCaption;
	}
	return params;
}

# pragma mark - Setters

-(void)setLibURL:(NSString *)libURL {
	_libURL = libURL;
	[self updateNSObject:@"libURL"];
}

-(void)setChartOptions:(id)chartOptions {
	_chartOptions = chartOptions;
	[self updateNSObject:@"chartOptions"];
}

-(void)setFallbackToExportServer:(NSNumber *)fallbackToExportServer {
	_fallbackToExportServer = fallbackToExportServer;
	[self updateNSObject:@"fallbackToExportServer"];
}

-(void)setPrintMaxWidth:(NSNumber *)printMaxWidth {
	_printMaxWidth = printMaxWidth;
	[self updateNSObject:@"printMaxWidth"];
}

-(void)setScale:(NSNumber *)scale {
	_scale = scale;
	[self updateNSObject:@"scale"];
}

-(void)setFormAttributes:(id)formAttributes {
	_formAttributes = formAttributes;
	[self updateNSObject:@"formAttributes"];
}

-(void)setUrl:(NSString *)url {
	_url = url;
	[self updateNSObject:@"url"];
}

-(void)setUseMultiLevelHeaders:(NSNumber *)useMultiLevelHeaders {
	_useMultiLevelHeaders = useMultiLevelHeaders;
	[self updateNSObject:@"useMultiLevelHeaders"];
}

-(void)setButtons:(HIButtons *)buttons {
	HIButtons *oldValue = _buttons;
	if(self.buttons) {
		[self removeObserver:self forKeyPath:@"buttons.isUpdated"];
	}
	_buttons = buttons;
	[self updateHIObject:oldValue newValue:buttons propertyName:@"buttons"];
}

-(void)setAllowHTML:(NSNumber *)allowHTML {
	_allowHTML = allowHTML;
	[self updateNSObject:@"allowHTML"];
}

-(void)setType:(NSString *)type {
	_type = type;
	[self updateNSObject:@"type"];
}

-(void)setCsv:(HICsv *)csv {
	HICsv *oldValue = _csv;
	if(self.csv) {
		[self removeObserver:self forKeyPath:@"csv.isUpdated"];
	}
	_csv = csv;
	[self updateHIObject:oldValue newValue:csv propertyName:@"csv"];
}

-(void)setSourceWidth:(NSNumber *)sourceWidth {
	_sourceWidth = sourceWidth;
	[self updateNSObject:@"sourceWidth"];
}

-(void)setMenuItemDefinitions:(id)menuItemDefinitions {
	_menuItemDefinitions = menuItemDefinitions;
	[self updateNSObject:@"menuItemDefinitions"];
}

-(void)setError:(HIFunction *)error {
	HIFunction *oldValue = _error;
	if(self.error) {
		[self removeObserver:self forKeyPath:@"error.isUpdated"];
	}
	_error = error;
	[self updateHIObject:oldValue newValue:error propertyName:@"error"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setUseRowspanHeaders:(NSNumber *)useRowspanHeaders {
	_useRowspanHeaders = useRowspanHeaders;
	[self updateNSObject:@"useRowspanHeaders"];
}

-(void)setShowTable:(NSNumber *)showTable {
	_showTable = showTable;
	[self updateNSObject:@"showTable"];
}

-(void)setSourceHeight:(NSNumber *)sourceHeight {
	_sourceHeight = sourceHeight;
	[self updateNSObject:@"sourceHeight"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setFilename:(NSString *)filename {
	_filename = filename;
	[self updateNSObject:@"filename"];
}

-(void)setTableCaption:(id)tableCaption {
	_tableCaption = tableCaption;
	[self updateNSObject:@"tableCaption"];
}

@end