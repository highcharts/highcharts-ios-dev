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

# pragma mark - Setters

-(void)setMaxHeight:(NSNumber *)maxHeight {
	_maxHeight = maxHeight;
	[self updateNSObject:@"maxHeight"];
}

-(void)setNavigation:(HINavigation *)navigation {
	HINavigation *oldValue = _navigation;
	if(self.navigation) {
		[self removeObserver:self forKeyPath:@"navigation.isUpdated"];
	}
	_navigation = navigation;
	[self updateHIObject:oldValue newValue:navigation propertyName:@"navigation"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setItemMarginBottom:(NSNumber *)itemMarginBottom {
	_itemMarginBottom = itemMarginBottom;
	[self updateNSObject:@"itemMarginBottom"];
}

-(void)setReversed:(NSNumber *)reversed {
	_reversed = reversed;
	[self updateNSObject:@"reversed"];
}

-(void)setItemCheckboxStyle:(HIItemCheckboxStyle *)itemCheckboxStyle {
	HIItemCheckboxStyle *oldValue = _itemCheckboxStyle;
	if(self.itemCheckboxStyle) {
		[self removeObserver:self forKeyPath:@"itemCheckboxStyle.isUpdated"];
	}
	_itemCheckboxStyle = itemCheckboxStyle;
	[self updateHIObject:oldValue newValue:itemCheckboxStyle propertyName:@"itemCheckboxStyle"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	if(self.backgroundColor) {
		[self removeObserver:self forKeyPath:@"backgroundColor.isUpdated"];
	}
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setKeyboardNavigation:(HIKeyboardNavigation *)keyboardNavigation {
	HIKeyboardNavigation *oldValue = _keyboardNavigation;
	if(self.keyboardNavigation) {
		[self removeObserver:self forKeyPath:@"keyboardNavigation.isUpdated"];
	}
	_keyboardNavigation = keyboardNavigation;
	[self updateHIObject:oldValue newValue:keyboardNavigation propertyName:@"keyboardNavigation"];
}

-(void)setItemDistance:(NSNumber *)itemDistance {
	_itemDistance = itemDistance;
	[self updateNSObject:@"itemDistance"];
}

-(void)setItemWidth:(NSNumber *)itemWidth {
	_itemWidth = itemWidth;
	[self updateNSObject:@"itemWidth"];
}

-(void)setLabelFormat:(NSString *)labelFormat {
	_labelFormat = labelFormat;
	[self updateNSObject:@"labelFormat"];
}

-(void)setTitle:(HITitle *)title {
	HITitle *oldValue = _title;
	if(self.title) {
		[self removeObserver:self forKeyPath:@"title.isUpdated"];
	}
	_title = title;
	[self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setItemStyle:(HIItemStyle *)itemStyle {
	HIItemStyle *oldValue = _itemStyle;
	if(self.itemStyle) {
		[self removeObserver:self forKeyPath:@"itemStyle.isUpdated"];
	}
	_itemStyle = itemStyle;
	[self updateHIObject:oldValue newValue:itemStyle propertyName:@"itemStyle"];
}

-(void)setLayout:(NSString *)layout {
	_layout = layout;
	[self updateNSObject:@"layout"];
}

-(void)setSymbolPadding:(NSNumber *)symbolPadding {
	_symbolPadding = symbolPadding;
	[self updateNSObject:@"symbolPadding"];
}

-(void)setItemHoverStyle:(HIItemHoverStyle *)itemHoverStyle {
	HIItemHoverStyle *oldValue = _itemHoverStyle;
	if(self.itemHoverStyle) {
		[self removeObserver:self forKeyPath:@"itemHoverStyle.isUpdated"];
	}
	_itemHoverStyle = itemHoverStyle;
	[self updateHIObject:oldValue newValue:itemHoverStyle propertyName:@"itemHoverStyle"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setLabelFormatter:(HIFunction *)labelFormatter {
	HIFunction *oldValue = _labelFormatter;
	if(self.labelFormatter) {
		[self removeObserver:self forKeyPath:@"labelFormatter.isUpdated"];
	}
	_labelFormatter = labelFormatter;
	[self updateHIObject:oldValue newValue:labelFormatter propertyName:@"labelFormatter"];
}

-(void)setShadow:(id)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setFloating:(NSNumber *)floating {
	_floating = floating;
	[self updateNSObject:@"floating"];
}

-(void)setSquareSymbol:(NSNumber *)squareSymbol {
	_squareSymbol = squareSymbol;
	[self updateNSObject:@"squareSymbol"];
}

-(void)setItemHiddenStyle:(HIItemHiddenStyle *)itemHiddenStyle {
	HIItemHiddenStyle *oldValue = _itemHiddenStyle;
	if(self.itemHiddenStyle) {
		[self removeObserver:self forKeyPath:@"itemHiddenStyle.isUpdated"];
	}
	_itemHiddenStyle = itemHiddenStyle;
	[self updateHIObject:oldValue newValue:itemHiddenStyle propertyName:@"itemHiddenStyle"];
}

-(void)setItemMarginTop:(NSNumber *)itemMarginTop {
	_itemMarginTop = itemMarginTop;
	[self updateNSObject:@"itemMarginTop"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setRtl:(NSNumber *)rtl {
	_rtl = rtl;
	[self updateNSObject:@"rtl"];
}

-(void)setSymbolRadius:(NSNumber *)symbolRadius {
	_symbolRadius = symbolRadius;
	[self updateNSObject:@"symbolRadius"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setMargin:(NSNumber *)margin {
	_margin = margin;
	[self updateNSObject:@"margin"];
}

-(void)setLineHeight:(NSNumber *)lineHeight {
	_lineHeight = lineHeight;
	[self updateNSObject:@"lineHeight"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setPadding:(NSNumber *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setSymbolHeight:(NSNumber *)symbolHeight {
	_symbolHeight = symbolHeight;
	[self updateNSObject:@"symbolHeight"];
}

-(void)setStyle:(NSDictionary *)style {
	_style = style;
	[self updateNSObject:@"style"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setSymbolWidth:(NSNumber *)symbolWidth {
	_symbolWidth = symbolWidth;
	[self updateNSObject:@"symbolWidth"];
}

@end