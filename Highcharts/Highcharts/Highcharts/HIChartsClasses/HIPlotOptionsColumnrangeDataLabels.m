#import "HIPlotOptionsColumnrangeDataLabels.h"

@implementation HIPlotOptionsColumnrangeDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.xHigh) {
		params[@"xHigh"] = self.xHigh;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
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
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.xLow) {
		params[@"xLow"] = self.xLow;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.yHigh) {
		params[@"yHigh"] = self.yHigh;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.yLow) {
		params[@"yLow"] = self.yLow;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.formatter) {
		params[@"formatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.formatter];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	return params;
}

@end