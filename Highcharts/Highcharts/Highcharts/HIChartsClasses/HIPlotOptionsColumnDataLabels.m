#import "HIPlotOptionsColumnDataLabels.h"

@implementation HIPlotOptionsColumnDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.formatter) {
		params[@"formatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.formatter];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.format) {
		params[@"format"] = self.format;
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
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	return params;
}

@end