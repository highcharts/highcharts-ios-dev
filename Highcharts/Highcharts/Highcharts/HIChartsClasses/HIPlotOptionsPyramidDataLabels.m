#import "HIPlotOptionsPyramidDataLabels.h"

@implementation HIPlotOptionsPyramidDataLabels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.connectorWidth) {
		params[@"connectorWidth"] = self.connectorWidth;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.crop) {
		params[@"crop"] = self.crop;
	}
	if (self.defer) {
		params[@"defer"] = self.defer;
	}
	if (self.inside) {
		params[@"inside"] = self.inside;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.overflow) {
		params[@"overflow"] = self.overflow;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.softConnector) {
		params[@"softConnector"] = self.softConnector;
	}
	if (self.format) {
		params[@"format"] = self.format;
	}
	if (self.connectorColor) {
		params[@"connectorColor"] = self.connectorColor;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.connectorPadding) {
		params[@"connectorPadding"] = self.connectorPadding;
	}
	return params;
}

@end