#import "HIButtonOptions.h"

@implementation HIButtonOptions

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.theme) {
		params[@"theme"] = [self.theme getParams];
	}
	if (self.symbolFill) {
		params[@"symbolFill"] = [self.symbolFill getData];
	}
	if (self.symbolStroke) {
		params[@"symbolStroke"] = [self.symbolStroke getData];
	}
	if (self.width) {
		params[@"width"] = self.width;
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
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.symbolX) {
		params[@"symbolX"] = self.symbolX;
	}
	if (self.symbolY) {
		params[@"symbolY"] = self.symbolY;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.buttonSpacing) {
		params[@"buttonSpacing"] = self.buttonSpacing;
	}
	return params;
}

@end