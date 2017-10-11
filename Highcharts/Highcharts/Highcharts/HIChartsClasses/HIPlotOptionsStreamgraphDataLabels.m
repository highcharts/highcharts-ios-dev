#import "HIPlotOptionsStreamgraphDataLabels.h"

@implementation HIPlotOptionsStreamgraphDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.formatter) {
		params[@"formatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.formatter];
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	return params;
}

@end