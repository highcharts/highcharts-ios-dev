#import "HIExportingButtonsContextButton.h"

@implementation HIExportingButtonsContextButton

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.symbolStrokeWidth) {
		params[@"symbolStrokeWidth"] = self.symbolStrokeWidth;
	}
	if (self.symbolY) {
		params[@"symbolY"] = self.symbolY;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.symbolX) {
		params[@"symbolX"] = self.symbolX;
	}
	if (self.symbolFill) {
		params[@"symbolFill"] = [self.symbolFill getData];
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.symbolStroke) {
		params[@"symbolStroke"] = [self.symbolStroke getData];
	}
	if (self.symbolSize) {
		params[@"symbolSize"] = self.symbolSize;
	}
	if (self.theme) {
		params[@"theme"] = self.theme;
	}
	if (self.onclick) {
		params[@"onclick"] = self.onclick;
	}
	if (self.menuItems) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.menuItems) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"menuItems"] = array;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	return params;
}

@end