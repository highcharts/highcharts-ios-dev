#import "HIExporting.h"

@implementation HIExporting

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.type) {
		params[@"type"] = self.type;
	}
	if (self.buttons) {
		params[@"buttons"] = [self.buttons getParams];
	}
	if (self.sourceHeight) {
		params[@"sourceHeight"] = self.sourceHeight;
	}
	if (self.fallbackToExportServer) {
		params[@"fallbackToExportServer"] = self.fallbackToExportServer;
	}
	if (self.sourceWidth) {
		params[@"sourceWidth"] = self.sourceWidth;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.url) {
		params[@"url"] = self.url;
	}
	if (self.allowHTML) {
		params[@"allowHTML"] = self.allowHTML;
	}
	if (self.filename) {
		params[@"filename"] = self.filename;
	}
	if (self.scale) {
		params[@"scale"] = self.scale;
	}
	if (self.formAttributes) {
		params[@"formAttributes"] = self.formAttributes;
	}
	if (self.libURL) {
		params[@"libURL"] = self.libURL;
	}
	if (self.chartOptions) {
		params[@"chartOptions"] = self.chartOptions;
	}
	if (self.error) {
		params[@"error"] = self.error;
	}
	if (self.printMaxWidth) {
		params[@"printMaxWidth"] = self.printMaxWidth;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	return params;
}

@end