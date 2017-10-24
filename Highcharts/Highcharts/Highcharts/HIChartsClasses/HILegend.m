#import "HILegend.h"

@implementation HILegend

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.maxHeight) {
		params[@"maxHeight"] = self.maxHeight;
	}
	if (self.navigation) {
		params[@"navigation"] = [self.navigation getParams];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.itemMarginBottom) {
		params[@"itemMarginBottom"] = self.itemMarginBottom;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.itemCheckboxStyle) {
		params[@"itemCheckboxStyle"] = [self.itemCheckboxStyle getParams];
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.keyboardNavigation) {
		params[@"keyboardNavigation"] = [self.keyboardNavigation getParams];
	}
	if (self.itemDistance) {
		params[@"itemDistance"] = self.itemDistance;
	}
	if (self.itemWidth) {
		params[@"itemWidth"] = self.itemWidth;
	}
	if (self.labelFormat) {
		params[@"labelFormat"] = self.labelFormat;
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.itemStyle) {
		params[@"itemStyle"] = [self.itemStyle getParams];
	}
	if (self.layout) {
		params[@"layout"] = self.layout;
	}
	if (self.symbolPadding) {
		params[@"symbolPadding"] = self.symbolPadding;
	}
	if (self.itemHoverStyle) {
		params[@"itemHoverStyle"] = [self.itemHoverStyle getParams];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.labelFormatter) {
		params[@"labelFormatter"] = [self.labelFormatter getFunction];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.squareSymbol) {
		params[@"squareSymbol"] = self.squareSymbol;
	}
	if (self.itemHiddenStyle) {
		params[@"itemHiddenStyle"] = [self.itemHiddenStyle getParams];
	}
	if (self.itemMarginTop) {
		params[@"itemMarginTop"] = self.itemMarginTop;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.rtl) {
		params[@"rtl"] = self.rtl;
	}
	if (self.symbolRadius) {
		params[@"symbolRadius"] = self.symbolRadius;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.lineHeight) {
		params[@"lineHeight"] = self.lineHeight;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.symbolHeight) {
		params[@"symbolHeight"] = self.symbolHeight;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.symbolWidth) {
		params[@"symbolWidth"] = self.symbolWidth;
	}
	return params;
}

@end