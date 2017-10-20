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
		params[@"error"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.error];
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

@end