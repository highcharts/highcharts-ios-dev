#import "HIBulletDataLabels.h"

@implementation HIBulletDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.formatter) {
		params[@"formatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.formatter];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	return params;
}

@end