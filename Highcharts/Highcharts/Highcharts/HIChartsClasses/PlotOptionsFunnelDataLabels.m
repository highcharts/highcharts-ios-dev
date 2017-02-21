#import "PlotOptionsFunnelDataLabels.h"

@implementation PlotOptionsFunnelDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.softConnector) {
		params[@"softConnector"] = self.softConnector;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.connectorPadding) {
		params[@"connectorPadding"] = self.connectorPadding;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getString];
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	return params;
}

@end