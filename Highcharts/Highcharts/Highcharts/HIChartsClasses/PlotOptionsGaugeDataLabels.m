#import "PlotOptionsGaugeDataLabels.h"

@implementation PlotOptionsGaugeDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getString];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	return params;
}

@end