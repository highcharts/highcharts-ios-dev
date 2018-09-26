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
	copyContextButton.symbol = [self.symbol copyWithZone: zone];
	copyContextButton.className = [self.className copyWithZone: zone];
	copyContextButton.onclick = [self.onclick copyWithZone: zone];
	copyContextButton.titleKey = [self.titleKey copyWithZone: zone];
	copyContextButton.x = [self.x copyWithZone: zone];
	copyContextButton.menuClassName = [self.menuClassName copyWithZone: zone];
	copyContextButton.menuItems = [self.menuItems copyWithZone: zone];
	copyContextButton.verticalAlign = [self.verticalAlign copyWithZone: zone];
	copyContextButton.text = [self.text copyWithZone: zone];
	copyContextButton.align = [self.align copyWithZone: zone];
	copyContextButton.enabled = [self.enabled copyWithZone: zone];
	copyContextButton.theme = [self.theme copyWithZone: zone];
	copyContextButton.height = [self.height copyWithZone: zone];
	copyContextButton.width = [self.width copyWithZone: zone];
	copyContextButton.buttonSpacing = [self.buttonSpacing copyWithZone: zone];
	copyContextButton.symbolSize = [self.symbolSize copyWithZone: zone];
	copyContextButton.y = [self.y copyWithZone: zone];
	copyContextButton.symbolStroke = [self.symbolStroke copyWithZone: zone];
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
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
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
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
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

-(void)setSymbolFill:(HIColor *)symbolFill {
	HIColor *oldValue = _symbolFill;
	if(self.symbolFill) {
		[self removeObserver:self forKeyPath:@"symbolFill.isUpdated"];
	}
	_symbolFill = symbolFill;
	[self updateHIObject:oldValue newValue:symbolFill propertyName:@"symbolFill"];
}

-(void)setSymbol:(NSString *)symbol {
	_symbol = symbol;
	[self updateNSObject:@"symbol"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setOnclick:(HIFunction *)onclick {
	HIFunction *oldValue = _onclick;
	if(self.onclick) {
		[self removeObserver:self forKeyPath:@"onclick.isUpdated"];
	}
	_onclick = onclick;
	[self updateHIObject:oldValue newValue:onclick propertyName:@"onclick"];
}

-(void)setTitleKey:(NSString *)titleKey {
	_titleKey = titleKey;
	[self updateNSObject:@"titleKey"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setMenuClassName:(NSString *)menuClassName {
	_menuClassName = menuClassName;
	[self updateNSObject:@"menuClassName"];
}

-(void)setMenuItems:(NSArray *)menuItems {
	NSArray *oldValue = _menuItems;
	_menuItems = menuItems;
	[self updateArrayObject:oldValue newValue:menuItems propertyName:@"menuItems"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setText:(NSString *)text {
	_text = text;
	[self updateNSObject:@"text"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setTheme:(HITheme *)theme {
	HITheme *oldValue = _theme;
	if(self.theme) {
		[self removeObserver:self forKeyPath:@"theme.isUpdated"];
	}
	_theme = theme;
	[self updateHIObject:oldValue newValue:theme propertyName:@"theme"];
}

-(void)setHeight:(NSNumber *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setButtonSpacing:(NSNumber *)buttonSpacing {
	_buttonSpacing = buttonSpacing;
	[self updateNSObject:@"buttonSpacing"];
}

-(void)setSymbolSize:(NSNumber *)symbolSize {
	_symbolSize = symbolSize;
	[self updateNSObject:@"symbolSize"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setSymbolStroke:(HIColor *)symbolStroke {
	HIColor *oldValue = _symbolStroke;
	if(self.symbolStroke) {
		[self removeObserver:self forKeyPath:@"symbolStroke.isUpdated"];
	}
	_symbolStroke = symbolStroke;
	[self updateHIObject:oldValue newValue:symbolStroke propertyName:@"symbolStroke"];
}

-(void)setSymbolY:(NSNumber *)symbolY {
	_symbolY = symbolY;
	[self updateNSObject:@"symbolY"];
}

-(void)setSymbolX:(NSNumber *)symbolX {
	_symbolX = symbolX;
	[self updateNSObject:@"symbolX"];
}

-(void)setSymbolStrokeWidth:(NSNumber *)symbolStrokeWidth {
	_symbolStrokeWidth = symbolStrokeWidth;
	[self updateNSObject:@"symbolStrokeWidth"];
}

@end