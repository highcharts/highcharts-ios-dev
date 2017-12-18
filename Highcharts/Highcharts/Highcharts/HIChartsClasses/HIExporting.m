#import "HIChartsJSONSerializableSubclass.h"
#import "HIExporting.h"

@implementation HIExporting

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.libURL) {
		params[@"libURL"] = self.libURL;
	}
	if (self.error) {
		params[@"error"] = [self.error getFunction];
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
	if (self.chartOptions) {
		params[@"chartOptions"] = self.chartOptions;
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
	return params;
}

# pragma mark - Setters

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setLibURL:(NSString *)libURL {
	_libURL = libURL;
	[self updateNSObject:@"libURL"];
}

-(void)setError:(HIFunction *)error {
	HIFunction *oldValue = _error;
	if(self.error) {
		[self removeObserver:self forKeyPath:@"error.isUpdated"];
	}
	_error = error;
	[self updateHIObject:oldValue newValue:error propertyName:@"error"];
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

-(void)setChartOptions:(id)chartOptions {
	_chartOptions = chartOptions;
	[self updateNSObject:@"chartOptions"];
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

@end