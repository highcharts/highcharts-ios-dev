#import "HIAreasplinerangeDataLabels.h"

@implementation HIAreasplinerangeDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.formatter) {
		params[@"formatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.formatter];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.yHigh) {
		params[@"yHigh"] = self.yHigh;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.xHigh) {
		params[@"xHigh"] = self.xHigh;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.xLow) {
		params[@"xLow"] = self.xLow;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.yLow) {
		params[@"yLow"] = self.yLow;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	return params;
}

@end