#import "PlotOptionsArearangeDataLabels.h"

@implementation PlotOptionsArearangeDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.xLow) {
		params[@"xLow"] = self.xLow;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.xHigh) {
		params[@"xHigh"] = self.xHigh;
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.yLow) {
		params[@"yLow"] = self.yLow;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getString];
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.yHigh) {
		params[@"yHigh"] = self.yHigh;
	}
	return params;
}

@end