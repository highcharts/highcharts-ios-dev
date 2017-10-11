#import "HIPlotOptionsErrorbarDataLabels.h"

@implementation HIPlotOptionsErrorbarDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.formatter) {
		params[@"formatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.formatter];
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	return params;
}

@end