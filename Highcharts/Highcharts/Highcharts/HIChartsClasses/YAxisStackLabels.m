#import "YAxisStackLabels.h"

@implementation YAxisStackLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
	}
	return params;
}

@end