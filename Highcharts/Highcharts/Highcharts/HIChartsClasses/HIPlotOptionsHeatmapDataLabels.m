#import "HIPlotOptionsHeatmapDataLabels.h"

@implementation HIPlotOptionsHeatmapDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	return params;
}

@end