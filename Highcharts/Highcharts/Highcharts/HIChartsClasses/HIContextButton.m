#import "HIChartsJSONSerializableSubclass.h"
#import "HIContextButton.h"

@implementation HIContextButton

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIContextButton *copyContextButton = [[HIContextButton allocWithZone: zone] init];
	copyContextButton.symbolFill = [self.symbolFill copyWithZone: zone];
	copyContextButton.menuItems = [self.menuItems copyWithZone: zone];
	copyContextButton.className = [self.className copyWithZone: zone];
	copyContextButton.onclick = [self.onclick copyWithZone: zone];
	copyContextButton.titleKey = [self.titleKey copyWithZone: zone];
	copyContextButton.x = [self.x copyWithZone: zone];
	copyContextButton.menuClassName = [self.menuClassName copyWithZone: zone];
	copyContextButton.symbol = [self.symbol copyWithZone: zone];
	copyContextButton.symbolStroke = [self.symbolStroke copyWithZone: zone];
	copyContextButton.text = [self.text copyWithZone: zone];
	copyContextButton.align = [self.align copyWithZone: zone];
	copyContextButton.enabled = [self.enabled copyWithZone: zone];
	copyContextButton.theme = [self.theme copyWithZone: zone];
	copyContextButton.height = [self.height copyWithZone: zone];
	copyContextButton.width = [self.width copyWithZone: zone];
	copyContextButton.buttonSpacing = [self.buttonSpacing copyWithZone: zone];
	copyContextButton.symbolSize = [self.symbolSize copyWithZone: zone];
	copyContextButton.y = [self.y copyWithZone: zone];
	copyContextButton.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyContextButton.symbolY = [self.symbolY copyWithZone: zone];
	copyContextButton.symbolX = [self.symbolX copyWithZone: zone];
	copyContextButton.symbolStrokeWidth = [self.symbolStrokeWidth copyWithZone: zone];
	return copyContextButton;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.symbolFill) {
		params[@"symbolFill"] = [self.symbolFill getData];
	}
	if (self.menuItems) {
		NSMutableArray *array = [[NSMutableArray alloc] init];
		for (id obj in self.menuItems) {
			if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
				[array addObject:[(HIChartsJSONSerializable *)obj getParams]];
			}
			else {
				[array addObject: obj];
			}
		}
		params[@"menuItems"] = array;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.onclick) {
		params[@"onclick"] = [self.onclick getFunction];
	}
	if (self.titleKey) {
		params[@"titleKey"] = self.titleKey;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.menuClassName) {
		params[@"menuClassName"] = self.menuClassName;
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.symbolStroke) {
		params[@"symbolStroke"] = [self.symbolStroke getData];
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
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
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

-(void)setSymbolFill:(HIColor *)symbolFill {
	HIColor *oldValue = _symbolFill;
	_symbolFill = symbolFill;
	[self updateHIObject:oldValue newValue:symbolFill propertyName:@"symbolFill"];
}

-(void)setMenuItems:(NSArray<NSString *> *)menuItems {
	NSArray<NSString *> *oldValue = _menuItems;
	_menuItems = menuItems;
	[self updateArrayObject:oldValue newValue:menuItems propertyName:@"menuItems"];
}

-(void)setClassName:(NSString *)className {
	NSString *oldValue = _className;
	_className = className;
	[self updateNSObject:oldValue newValue:className propertyName:@"className"];
}

-(void)setOnclick:(HIFunction *)onclick {
	HIFunction *oldValue = _onclick;
	_onclick = onclick;
	[self updateHIObject:oldValue newValue:onclick propertyName:@"onclick"];
}

-(void)setTitleKey:(NSString *)titleKey {
	NSString *oldValue = _titleKey;
	_titleKey = titleKey;
	[self updateNSObject:oldValue newValue:titleKey propertyName:@"titleKey"];
}

-(void)setX:(NSNumber *)x {
	NSNumber *oldValue = _x;
	_x = x;
	[self updateNSObject:oldValue newValue:x propertyName:@"x"];
}

-(void)setMenuClassName:(NSString *)menuClassName {
	NSString *oldValue = _menuClassName;
	_menuClassName = menuClassName;
	[self updateNSObject:oldValue newValue:menuClassName propertyName:@"menuClassName"];
}

-(void)setSymbol:(NSString *)symbol {
	NSString *oldValue = _symbol;
	_symbol = symbol;
	[self updateNSObject:oldValue newValue:symbol propertyName:@"symbol"];
}

-(void)setSymbolStroke:(HIColor *)symbolStroke {
	HIColor *oldValue = _symbolStroke;
	_symbolStroke = symbolStroke;
	[self updateHIObject:oldValue newValue:symbolStroke propertyName:@"symbolStroke"];
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

-(void)setVerticalAlign:(NSString *)verticalAlign {
	NSString *oldValue = _verticalAlign;
	_verticalAlign = verticalAlign;
	[self updateNSObject:oldValue newValue:verticalAlign propertyName:@"verticalAlign"];
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