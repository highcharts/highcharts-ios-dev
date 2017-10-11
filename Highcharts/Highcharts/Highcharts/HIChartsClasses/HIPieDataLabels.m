#import "HIPieDataLabels.h"

@implementation HIPieDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.connectorPadding) {
		params[@"connectorPadding"] = self.connectorPadding;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.softConnector) {
		params[@"softConnector"] = self.softConnector;
	}
	if (self.allowOverlap) {
		params[@"allowOverlap"] = self.allowOverlap;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.formatter) {
		params[@"formatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.formatter];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	return params;
}

@end