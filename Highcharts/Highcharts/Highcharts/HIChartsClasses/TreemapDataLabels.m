#import "TreemapDataLabels.h"

@implementation TreemapDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getString];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	return params;
}

@end