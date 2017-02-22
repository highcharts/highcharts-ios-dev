#import "HILegend.h"

@implementation HILegend

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.maxHeight) {
		params[@"maxHeight"] = self.maxHeight;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.squareSymbol) {
		params[@"squareSymbol"] = self.squareSymbol;
	}
	if (self.labelFormatter) {
		params[@"labelFormatter"] = self.labelFormatter;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.rtl) {
		params[@"rtl"] = self.rtl;
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.lineHeight) {
		params[@"lineHeight"] = self.lineHeight;
	}
	if (self.navigation) {
		params[@"navigation"] = [self.navigation getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.itemMarginBottom) {
		params[@"itemMarginBottom"] = self.itemMarginBottom;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.itemHiddenStyle) {
		params[@"itemHiddenStyle"] = self.itemHiddenStyle;
	}
	if (self.itemWidth) {
		params[@"itemWidth"] = self.itemWidth;
	}
	if (self.itemMarginTop) {
		params[@"itemMarginTop"] = self.itemMarginTop;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.labelFormat) {
		params[@"labelFormat"] = self.labelFormat;
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.symbolHeight) {
		params[@"symbolHeight"] = self.symbolHeight;
	}
	if (self.symbolPadding) {
		params[@"symbolPadding"] = self.symbolPadding;
	}
	if (self.itemDistance) {
		params[@"itemDistance"] = self.itemDistance;
	}
	if (self.itemStyle) {
		params[@"itemStyle"] = self.itemStyle;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getString];
	}
	if (self.itemHoverStyle) {
		params[@"itemHoverStyle"] = self.itemHoverStyle;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.symbolRadius) {
		params[@"symbolRadius"] = self.symbolRadius;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.symbolWidth) {
		params[@"symbolWidth"] = self.symbolWidth;
	}
	if (self.layout) {
		params[@"layout"] = self.layout;
	}
	return params;
}

@end