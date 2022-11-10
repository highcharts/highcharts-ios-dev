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
	copyLegend.valueSuffix = [self.valueSuffix copyWithZone: zone];
	copyLegend.accessibility = [self.accessibility copyWithZone: zone];
	copyLegend.squareSymbol = [self.squareSymbol copyWithZone: zone];
	copyLegend.itemWidth = [self.itemWidth copyWithZone: zone];
	copyLegend.symbolPadding = [self.symbolPadding copyWithZone: zone];
	copyLegend.floating = [self.floating copyWithZone: zone];
	copyLegend.symbolWidth = [self.symbolWidth copyWithZone: zone];
	copyLegend.useHTML = [self.useHTML copyWithZone: zone];
	copyLegend.borderColor = [self.borderColor copyWithZone: zone];
	copyLegend.className = [self.className copyWithZone: zone];
	copyLegend.layout = [self.layout copyWithZone: zone];
	copyLegend.title = [self.title copyWithZone: zone];
	copyLegend.width = [self.width copyWithZone: zone];
	copyLegend.itemMarginBottom = [self.itemMarginBottom copyWithZone: zone];
	copyLegend.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyLegend.itemMarginTop = [self.itemMarginTop copyWithZone: zone];
	copyLegend.bubbleLegend = [self.bubbleLegend copyWithZone: zone];
	copyLegend.labelFormat = [self.labelFormat copyWithZone: zone];
	copyLegend.itemStyle = [self.itemStyle copyWithZone: zone];
	copyLegend.reversed = [self.reversed copyWithZone: zone];
	copyLegend.itemCheckboxStyle = [self.itemCheckboxStyle copyWithZone: zone];
	copyLegend.padding = [self.padding copyWithZone: zone];
	copyLegend.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyLegend.shadow = [self.shadow copyWithZone: zone];
	copyLegend.itemHoverStyle = [self.itemHoverStyle copyWithZone: zone];
	copyLegend.itemDistance = [self.itemDistance copyWithZone: zone];
	copyLegend.navigation = [self.navigation copyWithZone: zone];
	copyLegend.align = [self.align copyWithZone: zone];
	copyLegend.enabled = [self.enabled copyWithZone: zone];
	copyLegend.maxHeight = [self.maxHeight copyWithZone: zone];
	copyLegend.itemHiddenStyle = [self.itemHiddenStyle copyWithZone: zone];
	copyLegend.alignColumns = [self.alignColumns copyWithZone: zone];
	copyLegend.symbolHeight = [self.symbolHeight copyWithZone: zone];
	copyLegend.borderWidth = [self.borderWidth copyWithZone: zone];
	copyLegend.labelFormatter = [self.labelFormatter copyWithZone: zone];
	copyLegend.y = [self.y copyWithZone: zone];
	copyLegend.x = [self.x copyWithZone: zone];
	copyLegend.margin = [self.margin copyWithZone: zone];
	copyLegend.valueDecimals = [self.valueDecimals copyWithZone: zone];
	copyLegend.legendLabel = [self.legendLabel copyWithZone: zone];
	copyLegend.legendLabelNoTitle = [self.legendLabelNoTitle copyWithZone: zone];
	copyLegend.legendItem = [self.legendItem copyWithZone: zone];
	return copyLegend;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	params[@"_wrapperID"] = self.uuid;
	if (self.symbolRadius) {
		params[@"symbolRadius"] = self.symbolRadius;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.rtl) {
		params[@"rtl"] = self.rtl;
	}
	if (self.valueSuffix) {
		params[@"valueSuffix"] = self.valueSuffix;
	}
	if (self.accessibility) {
		params[@"accessibility"] = [self.accessibility getParams];
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
	if (self.className) {
		params[@"className"] = self.className;
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
	if (self.bubbleLegend) {
		params[@"bubbleLegend"] = [self.bubbleLegend getParams];
	}
	if (self.labelFormat) {
		params[@"labelFormat"] = self.labelFormat;
	}
	if (self.itemStyle) {
		params[@"itemStyle"] = [self.itemStyle getParams];
	}
	if (self.reversed) {
		params[@"reversed"] = self.reversed;
	}
	if (self.itemCheckboxStyle) {
		params[@"itemCheckboxStyle"] = [self.itemCheckboxStyle getParams];
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.shadow) {
		params[@"shadow"] = [self.shadow getParams];
	}
	if (self.itemHoverStyle) {
		params[@"itemHoverStyle"] = [self.itemHoverStyle getParams];
	}
	if (self.itemDistance) {
		params[@"itemDistance"] = self.itemDistance;
	}
	if (self.navigation) {
		params[@"navigation"] = [self.navigation getParams];
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.maxHeight) {
		params[@"maxHeight"] = self.maxHeight;
	}
	if (self.itemHiddenStyle) {
		params[@"itemHiddenStyle"] = [self.itemHiddenStyle getParams];
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
		params[@"labelFormatter"] = [self.labelFormatter getFunction];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.valueDecimals) {
		params[@"valueDecimals"] = self.valueDecimals;
	}
	if (self.legendLabel) {
		params[@"legendLabel"] = self.legendLabel;
	}
	if (self.legendLabelNoTitle) {
		params[@"legendLabelNoTitle"] = self.legendLabelNoTitle;
	}
	if (self.legendItem) {
		params[@"legendItem"] = self.legendItem;
	}
	return params;
}

# pragma mark - Setters

-(void)setSymbolRadius:(NSNumber *)symbolRadius {
	NSNumber *oldValue = _symbolRadius;
	_symbolRadius = symbolRadius;
	[self updateNSObject:oldValue newValue:symbolRadius propertyName:@"symbolRadius"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setRtl:(NSNumber *)rtl {
	NSNumber *oldValue = _rtl;
	_rtl = rtl;
	[self updateNSObject:oldValue newValue:rtl propertyName:@"rtl"];
}

-(void)setValueSuffix:(NSString *)valueSuffix {
	NSString *oldValue = _valueSuffix;
	_valueSuffix = valueSuffix;
	[self updateNSObject:oldValue newValue:valueSuffix propertyName:@"valueSuffix"];
}

-(void)setAccessibility:(HIAccessibility *)accessibility {
	HIAccessibility *oldValue = _accessibility;
	_accessibility = accessibility;
	[self updateHIObject:oldValue newValue:accessibility propertyName:@"accessibility"];
}

-(void)setSquareSymbol:(NSNumber *)squareSymbol {
	NSNumber *oldValue = _squareSymbol;
	_squareSymbol = squareSymbol;
	[self updateNSObject:oldValue newValue:squareSymbol propertyName:@"squareSymbol"];
}

-(void)setItemWidth:(NSNumber *)itemWidth {
	NSNumber *oldValue = _itemWidth;
	_itemWidth = itemWidth;
	[self updateNSObject:oldValue newValue:itemWidth propertyName:@"itemWidth"];
}

-(void)setSymbolPadding:(NSNumber *)symbolPadding {
	NSNumber *oldValue = _symbolPadding;
	_symbolPadding = symbolPadding;
	[self updateNSObject:oldValue newValue:symbolPadding propertyName:@"symbolPadding"];
}

-(void)setFloating:(NSNumber *)floating {
	NSNumber *oldValue = _floating;
	_floating = floating;
	[self updateNSObject:oldValue newValue:floating propertyName:@"floating"];
}

-(void)setSymbolWidth:(NSNumber *)symbolWidth {
	NSNumber *oldValue = _symbolWidth;
	_symbolWidth = symbolWidth;
	[self updateNSObject:oldValue newValue:symbolWidth propertyName:@"symbolWidth"];
}

-(void)setUseHTML:(NSNumber *)useHTML {
	NSNumber *oldValue = _useHTML;
	_useHTML = useHTML;
	[self updateNSObject:oldValue newValue:useHTML propertyName:@"useHTML"];
}

-(void)setBorderColor:(HIColor *)borderColor {
	HIColor *oldValue = _borderColor;
	_borderColor = borderColor;
	[self updateHIObject:oldValue newValue:borderColor propertyName:@"borderColor"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setLayout:(NSString *)layout {
	NSString *oldValue = _layout;
	_layout = layout;
	[self updateNSObject:oldValue newValue:layout propertyName:@"layout"];
}

-(void)setTitle:(HITitle *)title {
	HITitle *oldValue = _title;
	_title = title;
	[self updateHIObject:oldValue newValue:title propertyName:@"title"];
}

-(void)setWidth:(id)width {
	id oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setItemMarginBottom:(NSNumber *)itemMarginBottom {
	NSNumber *oldValue = _itemMarginBottom;
	_itemMarginBottom = itemMarginBottom;
	[self updateNSObject:oldValue newValue:itemMarginBottom propertyName:@"itemMarginBottom"];
}

-(void)setBackgroundColor:(HIColor *)backgroundColor {
	HIColor *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateHIObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setItemMarginTop:(NSNumber *)itemMarginTop {
	NSNumber *oldValue = _itemMarginTop;
	_itemMarginTop = itemMarginTop;
	[self updateNSObject:oldValue newValue:itemMarginTop propertyName:@"itemMarginTop"];
}

-(void)setBubbleLegend:(HIBubbleLegend *)bubbleLegend {
	HIBubbleLegend *oldValue = _bubbleLegend;
	_bubbleLegend = bubbleLegend;
	[self updateHIObject:oldValue newValue:bubbleLegend propertyName:@"bubbleLegend"];
}

-(void)setLabelFormat:(NSString *)labelFormat {
	NSString *oldValue = _labelFormat;
	_labelFormat = labelFormat;
	[self updateNSObject:oldValue newValue:labelFormat propertyName:@"labelFormat"];
}

-(void)setItemStyle:(HICSSObject *)itemStyle {
	HICSSObject *oldValue = _itemStyle;
	_itemStyle = itemStyle;
	[self updateHIObject:oldValue newValue:itemStyle propertyName:@"itemStyle"];
}

-(void)setReversed:(NSNumber *)reversed {
	NSNumber *oldValue = _reversed;
	_reversed = reversed;
	[self updateNSObject:oldValue newValue:reversed propertyName:@"reversed"];
}

-(void)setItemCheckboxStyle:(HICSSObject *)itemCheckboxStyle {
	HICSSObject *oldValue = _itemCheckboxStyle;
	_itemCheckboxStyle = itemCheckboxStyle;
	[self updateHIObject:oldValue newValue:itemCheckboxStyle propertyName:@"itemCheckboxStyle"];
}

-(void)setPadding:(NSNumber *)padding {
	NSNumber *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
}

-(void)setShadow:(HICSSObject *)shadow {
	HICSSObject *oldValue = _shadow;
	_shadow = shadow;
	[self updateHIObject:oldValue newValue:shadow propertyName:@"shadow"];
}

-(void)setItemHoverStyle:(HICSSObject *)itemHoverStyle {
	HICSSObject *oldValue = _itemHoverStyle;
	_itemHoverStyle = itemHoverStyle;
	[self updateHIObject:oldValue newValue:itemHoverStyle propertyName:@"itemHoverStyle"];
}

-(void)setItemDistance:(NSNumber *)itemDistance {
	NSNumber *oldValue = _itemDistance;
	_itemDistance = itemDistance;
	[self updateNSObject:oldValue newValue:itemDistance propertyName:@"itemDistance"];
}

-(void)setNavigation:(HINavigation *)navigation {
	HINavigation *oldValue = _navigation;
	_navigation = navigation;
	[self updateHIObject:oldValue newValue:navigation propertyName:@"navigation"];
}

-(void)setAlign:(NSString *)align {
	NSString *oldValue = _align;
	_align = align;
	[self updateNSObject:oldValue newValue:align propertyName:@"align"];
}

-(void)setEnabled:(NSNumber *)enabled {
	NSNumber *oldValue = _enabled;
	_enabled = enabled;
	[self updateNSObject:oldValue newValue:enabled propertyName:@"enabled"];
}

-(void)setMaxHeight:(NSNumber *)maxHeight {
	NSNumber *oldValue = _maxHeight;
	_maxHeight = maxHeight;
	[self updateNSObject:oldValue newValue:maxHeight propertyName:@"maxHeight"];
}

-(void)setItemHiddenStyle:(HICSSObject *)itemHiddenStyle {
	HICSSObject *oldValue = _itemHiddenStyle;
	_itemHiddenStyle = itemHiddenStyle;
	[self updateHIObject:oldValue newValue:itemHiddenStyle propertyName:@"itemHiddenStyle"];
}

-(void)setAlignColumns:(NSNumber *)alignColumns {
	NSNumber *oldValue = _alignColumns;
	_alignColumns = alignColumns;
	[self updateNSObject:oldValue newValue:alignColumns propertyName:@"alignColumns"];
}

-(void)setSymbolHeight:(NSNumber *)symbolHeight {
	NSNumber *oldValue = _symbolHeight;
	_symbolHeight = symbolHeight;
	[self updateNSObject:oldValue newValue:symbolHeight propertyName:@"symbolHeight"];
}

-(void)setBorderWidth:(NSNumber *)borderWidth {
	NSNumber *oldValue = _borderWidth;
	_borderWidth = borderWidth;
	[self updateNSObject:oldValue newValue:borderWidth propertyName:@"borderWidth"];
}

-(void)setLabelFormatter:(HIFunction *)labelFormatter {
	HIFunction *oldValue = _labelFormatter;
	_labelFormatter = labelFormatter;
	[self updateHIObject:oldValue newValue:labelFormatter propertyName:@"labelFormatter"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setMargin:(NSNumber *)margin {
	NSNumber *oldValue = _margin;
	_margin = margin;
	[self updateNSObject:oldValue newValue:margin propertyName:@"margin"];
}

-(void)setValueDecimals:(NSNumber *)valueDecimals {
	NSNumber *oldValue = _valueDecimals;
	_valueDecimals = valueDecimals;
	[self updateNSObject:oldValue newValue:valueDecimals propertyName:@"valueDecimals"];
}

-(void)setLegendLabel:(NSString *)legendLabel {
	NSString *oldValue = _legendLabel;
	_legendLabel = legendLabel;
	[self updateNSObject:oldValue newValue:legendLabel propertyName:@"legendLabel"];
}

-(void)setLegendLabelNoTitle:(NSString *)legendLabelNoTitle {
	NSString *oldValue = _legendLabelNoTitle;
	_legendLabelNoTitle = legendLabelNoTitle;
	[self updateNSObject:oldValue newValue:legendLabelNoTitle propertyName:@"legendLabelNoTitle"];
}

-(void)setLegendItem:(NSString *)legendItem {
	NSString *oldValue = _legendItem;
	_legendItem = legendItem;
	[self updateNSObject:oldValue newValue:legendItem propertyName:@"legendItem"];
}

- (void)setPointText:(HIPoint *)item {
    self.jsClassMethod = @{ @"class" : @"Legend", @"method" : @"setText", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)setSeriesText:(HISeries *)item {
    self.jsClassMethod = @{ @"class" : @"Legend", @"method" : @"setText", @"id" : self.uuid, @"params" : @[[item getParams]] };
}

- (void)update:(HILegend *)options {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Legend", @"method" : @"update0", @"id" : self.uuid, @"params" : @[params] };
}

- (void)update:(HILegend *)options redraw:(NSNumber *)redraw {
    NSMutableDictionary *params = [[options getParams] mutableCopy];
    [params removeObjectForKey:@"_wrapperID"];
    self.jsClassMethod = @{ @"class" : @"Legend", @"method" : @"update1", @"id" : self.uuid, @"params" : @[params, redraw] };
}

@end