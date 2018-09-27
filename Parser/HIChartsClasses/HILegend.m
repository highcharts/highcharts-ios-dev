#import "HIChartsJSONSerializableSubclass.h"
#import "HILegend.h"

@implementation HILegend

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HILegend *copyLegend = [[HILegend allocWithZone: zone] init];
	copyLegend.symbolRadius = [self.symbolRadius copyWithZone: zone];
	copyLegend.borderRadius = [self.borderRadius copyWithZone: zone];
	copyLegend.rtl = [self.rtl copyWithZone: zone];
	copyLegend.squareSymbol = [self.squareSymbol copyWithZone: zone];
	copyLegend.itemWidth = [self.itemWidth copyWithZone: zone];
	copyLegend.symbolPadding = [self.symbolPadding copyWithZone: zone];
	copyLegend.floating = [self.floating copyWithZone: zone];
	copyLegend.symbolWidth = [self.symbolWidth copyWithZone: zone];
	copyLegend.useHTML = [self.useHTML copyWithZone: zone];
	copyLegend.borderColor = [self.borderColor copyWithZone: zone];
	copyLegend.layout = [self.layout copyWithZone: zone];
	copyLegend.title = [self.title copyWithZone: zone];
	copyLegend.width = [self.width copyWithZone: zone];
	copyLegend.itemMarginBottom = [self.itemMarginBottom copyWithZone: zone];
	copyLegend.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyLegend.itemMarginTop = [self.itemMarginTop copyWithZone: zone];
	copyLegend.itemCheckboxStyle = [self.itemCheckboxStyle copyWithZone: zone];
	copyLegend.labelFormat = [self.labelFormat copyWithZone: zone];
	copyLegend.itemStyle = [self.itemStyle copyWithZone: zone];
	copyLegend.reversed = [self.reversed copyWithZone: zone];
	copyLegend.padding = [self.padding copyWithZone: zone];
	copyLegend.itemDistance = [self.itemDistance copyWithZone: zone];
	copyLegend.shadow = [self.shadow copyWithZone: zone];
	copyLegend.itemHoverStyle = [self.itemHoverStyle copyWithZone: zone];
	copyLegend.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyLegend.margin = [self.margin copyWithZone: zone];
	copyLegend.align = [self.align copyWithZone: zone];
	copyLegend.keyboardNavigation = [self.keyboardNavigation copyWithZone: zone];
	copyLegend.enabled = [self.enabled copyWithZone: zone];
	copyLegend.maxHeight = [self.maxHeight copyWithZone: zone];
	copyLegend.itemHiddenStyle = [self.itemHiddenStyle copyWithZone: zone];
	copyLegend.alignColumns = [self.alignColumns copyWithZone: zone];
	copyLegend.symbolHeight = [self.symbolHeight copyWithZone: zone];
	copyLegend.borderWidth = [self.borderWidth copyWithZone: zone];
	copyLegend.labelFormatter = [self.labelFormatter copyWithZone: zone];
	copyLegend.y = [self.y copyWithZone: zone];
	copyLegend.x = [self.x copyWithZone: zone];
	copyLegend.navigation = [self.navigation copyWithZone: zone];
	return copyLegend;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.symbolRadius) {
		params[@"symbolRadius"] = self.symbolRadius;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.rtl) {
		params[@"rtl"] = self.rtl;
	}
	if (self.squareSymbol) {
		params[@"squareSymbol"] = self.squareSymbol;
	}
	if (self.itemWidth) {
		params[@"itemWidth"] = self.itemWidth;
	}
	if (self.symbolPadding) {
		params[@"symbolPadding"] = self.symbolPadding;
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.symbolWidth) {
		params[@"symbolWidth"] = self.symbolWidth;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.layout) {
		params[@"layout"] = self.layout;
	}
	if (self.title) {
		params[@"title"] = [self.title getParams];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.itemMarginBottom) {
		params[@"itemMarginBottom"] = self.itemMarginBottom;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.itemMarginTop) {
		params[@"itemMarginTop"] = self.itemMarginTop;
	}
	if (self.itemCheckboxStyle) {
		params[@"itemCheckboxStyle"] = [self.itemCheckboxStyle getParams];
	}
	if (self.labelFormat) {
		params[@"labelFormat"] = self.labelFormat;
	}
	if (self.itemStyle) {
		params[@"itemStyle"] = self.itemStyle;
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.itemDistance) {
		params[@"itemDistance"] = self.itemDistance;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.itemHoverStyle) {
		params[@"itemHoverStyle"] = self.itemHoverStyle;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.keyboardNavigation) {
		params[@"keyboardNavigation"] = [self.keyboardNavigation getParams];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.maxHeight) {
		params[@"maxHeight"] = self.maxHeight;
	}
	if (self.itemHiddenStyle) {
		params[@"itemHiddenStyle"] = self.itemHiddenStyle;
	}
	if (self.alignColumns) {
		params[@"alignColumns"] = self.alignColumns;
	}
	if (self.symbolHeight) {
		params[@"symbolHeight"] = self.symbolHeight;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.labelFormatter) {
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.navigation) {
		params[@"navigation"] = [self.navigation getParams];
	}
	return params;
}

# pragma mark - Setters

-(void)setSymbolRadius:(NSNumber *)symbolRadius {
	_symbolRadius = symbolRadius;
	[self updateNSObject:@"symbolRadius"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setRtl:(NSNumber *)rtl {
	_rtl = rtl;
	[self updateNSObject:@"rtl"];
}

-(void)setSquareSymbol:(NSNumber *)squareSymbol {
	_squareSymbol = squareSymbol;
	[self updateNSObject:@"squareSymbol"];
}

-(void)setItemWidth:(NSNumber *)itemWidth {
	_itemWidth = itemWidth;
	[self updateNSObject:@"itemWidth"];
}

-(void)setSymbolPadding:(NSNumber *)symbolPadding {
	_symbolPadding = symbolPadding;
	[self updateNSObject:@"symbolPadding"];
}

-(void)setFloating:(NSNumber *)floating {
	_floating = floating;
	[self updateNSObject:@"floating"];
}

-(void)setSymbolWidth:(NSNumber *)symbolWidth {
	_symbolWidth = symbolWidth;
	[self updateNSObject:@"symbolWidth"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	_useHTML = useHTML;
	[self updateNSObject:@"useHTML"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	if(self.borderColor) {
		[self removeObserver:self forKeyPath:@"borderColor.isUpdated"];
	}
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setLayout:(NSString *)layout {
	_layout = layout;
	[self updateNSObject:@"layout"];
}

-(void)setTitle:(HITitle *)title {
	HITitle *oldValue = _title;
	if(self.title) {
		[self removeObserver:self forKeyPath:@"title.isUpdated"];
	}
	_title = title;
	[self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setItemMarginBottom:(NSNumber *)itemMarginBottom {
	_itemMarginBottom = itemMarginBottom;
	[self updateNSObject:@"itemMarginBottom"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	if(self.backgroundColor) {
		[self removeObserver:self forKeyPath:@"backgroundColor.isUpdated"];
	}
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setItemMarginTop:(NSNumber *)itemMarginTop {
	_itemMarginTop = itemMarginTop;
	[self updateNSObject:@"itemMarginTop"];
}

-(void)setItemCheckboxStyle:(HIItemCheckboxStyle *)itemCheckboxStyle {
	HIItemCheckboxStyle *oldValue = _itemCheckboxStyle;
	if(self.itemCheckboxStyle) {
		[self removeObserver:self forKeyPath:@"itemCheckboxStyle.isUpdated"];
	}
	_itemCheckboxStyle = itemCheckboxStyle;
	[self updateHIObject:oldValue newValue:itemCheckboxStyle propertyName:@"itemCheckboxStyle"];
}

-(void)setLabelFormat:(NSString *)labelFormat {
	_labelFormat = labelFormat;
	[self updateNSObject:@"labelFormat"];
}

-(void)setItemStyle:(NSDictionary *)itemStyle {
	_itemStyle = itemStyle;
	[self updateNSObject:@"itemStyle"];
}

-(void)setReversed:(NSNumber *)reversed {
	_reversed = reversed;
	[self updateNSObject:@"reversed"];
}

-(void)setPadding:(NSNumber *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setItemDistance:(NSNumber *)itemDistance {
	_itemDistance = itemDistance;
	[self updateNSObject:@"itemDistance"];
}

-(void)setShadow:(id)shadow {
	_shadow = shadow;
	[self updateNSObject:@"shadow"];
}

-(void)setItemHoverStyle:(NSDictionary *)itemHoverStyle {
	_itemHoverStyle = itemHoverStyle;
	[self updateNSObject:@"itemHoverStyle"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setMargin:(NSNumber *)margin {
	_margin = margin;
	[self updateNSObject:@"margin"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setKeyboardNavigation:(HIKeyboardNavigation *)keyboardNavigation {
	HIKeyboardNavigation *oldValue = _keyboardNavigation;
	if(self.keyboardNavigation) {
		[self removeObserver:self forKeyPath:@"keyboardNavigation.isUpdated"];
	}
	_keyboardNavigation = keyboardNavigation;
	[self updateHIObject:oldValue newValue:keyboardNavigation propertyName:@"keyboardNavigation"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setMaxHeight:(NSNumber *)maxHeight {
	_maxHeight = maxHeight;
	[self updateNSObject:@"maxHeight"];
}

-(void)setItemHiddenStyle:(NSDictionary *)itemHiddenStyle {
	_itemHiddenStyle = itemHiddenStyle;
	[self updateNSObject:@"itemHiddenStyle"];
}

-(void)setAlignColumns:(NSNumber *)alignColumns {
	_alignColumns = alignColumns;
	[self updateNSObject:@"alignColumns"];
}

-(void)setSymbolHeight:(NSNumber *)symbolHeight {
	_symbolHeight = symbolHeight;
	[self updateNSObject:@"symbolHeight"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	_borderWidth = borderWidth;
	[self updateNSObject:@"borderWidth"];
}

-(void)setLabelFormatter:(id)labelFormatter {
	_labelFormatter = labelFormatter;
	[self updateNSObject:@"labelFormatter"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setNavigation:(HINavigation *)navigation {
	HINavigation *oldValue = _navigation;
	if(self.navigation) {
		[self removeObserver:self forKeyPath:@"navigation.isUpdated"];
	}
	_navigation = navigation;
	[self updateHIObject:oldValue newValue:navigation propertyName:@"navigation"];
}

@end