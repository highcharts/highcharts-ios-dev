#import "HIChartsJSONSerializableSubclass.h"
#import "HIButtonOptions.h"

@implementation HIButtonOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIButtonOptions *copyButtonOptions = [[HIButtonOptions allocWithZone: zone] init];
	copyButtonOptions.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyButtonOptions.symbolFill = [self.symbolFill copyWithZone: zone];
	copyButtonOptions.text = [self.text copyWithZone: zone];
	copyButtonOptions.align = [self.align copyWithZone: zone];
	copyButtonOptions.enabled = [self.enabled copyWithZone: zone];
	copyButtonOptions.theme = [self.theme copyWithZone: zone];
	copyButtonOptions.height = [self.height copyWithZone: zone];
	copyButtonOptions.width = [self.width copyWithZone: zone];
	copyButtonOptions.buttonSpacing = [self.buttonSpacing copyWithZone: zone];
	copyButtonOptions.symbolSize = [self.symbolSize copyWithZone: zone];
	copyButtonOptions.y = [self.y copyWithZone: zone];
	copyButtonOptions.symbolStroke = [self.symbolStroke copyWithZone: zone];
	copyButtonOptions.symbolY = [self.symbolY copyWithZone: zone];
	copyButtonOptions.symbolX = [self.symbolX copyWithZone: zone];
	copyButtonOptions.symbolStrokeWidth = [self.symbolStrokeWidth copyWithZone: zone];
	return copyButtonOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.symbolFill) {
		params[@"symbolFill"] = [self.symbolFill getData];
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.theme) {
		params[@"theme"] = [self.theme getParams];
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.buttonSpacing) {
		params[@"buttonSpacing"] = self.buttonSpacing;
	}
	if (self.symbolSize) {
		params[@"symbolSize"] = self.symbolSize;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.symbolStroke) {
		params[@"symbolStroke"] = [self.symbolStroke getData];
	}
	if (self.symbolY) {
		params[@"symbolY"] = self.symbolY;
	}
	if (self.symbolX) {
		params[@"symbolX"] = self.symbolX;
	}
	if (self.symbolStrokeWidth) {
		params[@"symbolStrokeWidth"] = self.symbolStrokeWidth;
	}
	return params;
}

# pragma mark - Setters

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
}

-(void)setSymbolFill:(HIColor *)symbolFill {
	HIColor *oldValue = _symbolFill;
	_symbolFill = symbolFill;
	[self updateHIObject:oldValue newValue:symbolFill propertyName:@"symbolFill"];
}

-(void)setText:(NSString *)text {
	NSString *oldValue = _text;
	_text = text;
	[self updateNSObject:oldValue newValue:text propertyName:@"text"];
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

-(void)setTheme:(HITheme *)theme {
	HITheme *oldValue = _theme;
	_theme = theme;
	[self updateHIObject:oldValue newValue:theme propertyName:@"theme"];
}

-(void)setHeight:(NSNumber *)height {
	NSNumber *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

-(void)setButtonSpacing:(NSNumber *)buttonSpacing {
	NSNumber *oldValue = _buttonSpacing;
	_buttonSpacing = buttonSpacing;
	[self updateNSObject:oldValue newValue:buttonSpacing propertyName:@"buttonSpacing"];
}

-(void)setSymbolSize:(NSNumber *)symbolSize {
	NSNumber *oldValue = _symbolSize;
	_symbolSize = symbolSize;
	[self updateNSObject:oldValue newValue:symbolSize propertyName:@"symbolSize"];
}

-(void)setY:(NSNumber *)y {
	NSNumber *oldValue = _y;
	_y = y;
	[self updateNSObject:oldValue newValue:y propertyName:@"y"];
}

-(void)setSymbolStroke:(HIColor *)symbolStroke {
	HIColor *oldValue = _symbolStroke;
	_symbolStroke = symbolStroke;
	[self updateHIObject:oldValue newValue:symbolStroke propertyName:@"symbolStroke"];
}

-(void)setSymbolY:(NSNumber *)symbolY {
	NSNumber *oldValue = _symbolY;
	_symbolY = symbolY;
	[self updateNSObject:oldValue newValue:symbolY propertyName:@"symbolY"];
}

-(void)setSymbolX:(NSNumber *)symbolX {
	NSNumber *oldValue = _symbolX;
	_symbolX = symbolX;
	[self updateNSObject:oldValue newValue:symbolX propertyName:@"symbolX"];
}

-(void)setSymbolStrokeWidth:(NSNumber *)symbolStrokeWidth {
	NSNumber *oldValue = _symbolStrokeWidth;
	_symbolStrokeWidth = symbolStrokeWidth;
	[self updateNSObject:oldValue newValue:symbolStrokeWidth propertyName:@"symbolStrokeWidth"];
}

@end