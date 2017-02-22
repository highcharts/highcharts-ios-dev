#import "HINavigationButtonOptions.h"

@implementation HINavigationButtonOptions

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.symbolX) {
		params[@"symbolX"] = self.symbolX;
	}
	if (self.symbolY) {
		params[@"symbolY"] = self.symbolY;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.theme) {
		params[@"theme"] = self.theme;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.symbolSize) {
		params[@"symbolSize"] = self.symbolSize;
	}
	if (self.symbolStrokeWidth) {
		params[@"symbolStrokeWidth"] = self.symbolStrokeWidth;
	}
	if (self.symbolFill) {
		params[@"symbolFill"] = [self.symbolFill getString];
	}
	if (self.symbolStroke) {
		params[@"symbolStroke"] = [self.symbolStroke getString];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	return params;
}

@end