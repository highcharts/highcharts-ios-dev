#import "HIPlotOptionsSunburstDataLabels.h"

@implementation HIPlotOptionsSunburstDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.formatter) {
		params[@"formatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.formatter];
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.softConnector) {
		params[@"softConnector"] = self.softConnector;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.connectorPadding) {
		params[@"connectorPadding"] = self.connectorPadding;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.rotationMode) {
		params[@"rotationMode"] = self.rotationMode;
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
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	return params;
}

@end