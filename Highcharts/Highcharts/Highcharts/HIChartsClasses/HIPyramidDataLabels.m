#import "HIPyramidDataLabels.h"

@implementation HIPyramidDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.softConnector) {
		params[@"softConnector"] = self.softConnector;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.connectorPadding) {
		params[@"connectorPadding"] = self.connectorPadding;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.className) {
		params[@"className"] = self.className;
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
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
	}
	return params;
}

@end