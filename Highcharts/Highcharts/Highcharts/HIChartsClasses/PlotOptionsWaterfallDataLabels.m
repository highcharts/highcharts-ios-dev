#import "PlotOptionsWaterfallDataLabels.h"

@implementation PlotOptionsWaterfallDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getString];
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	return params;
}

@end