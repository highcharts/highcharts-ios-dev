#import "HIChartsJSONSerializableSubclass.h"
#import "HIContextButton.h"

@implementation HIContextButton

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.symbolStrokeWidth) {
		params[@"symbolStrokeWidth"] = self.symbolStrokeWidth;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.symbolSize) {
		params[@"symbolSize"] = self.symbolSize;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.buttonSpacing) {
		params[@"buttonSpacing"] = self.buttonSpacing;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.symbol) {
		params[@"symbol"] = self.symbol;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.onclick) {
		params[@"onclick"] = [self.onclick getFunction];
	}
	if (self.symbolFill) {
		params[@"symbolFill"] = [self.symbolFill getData];
	}
	if (self.symbolY) {
		params[@"symbolY"] = self.symbolY;
	}
	if (self.symbolStroke) {
		params[@"symbolStroke"] = [self.symbolStroke getData];
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.menuClassName) {
		params[@"menuClassName"] = self.menuClassName;
	}
	if (self._titleKey) {
		params[@"_titleKey"] = self._titleKey;
	}
	if (self.symbolX) {
		params[@"symbolX"] = self.symbolX;
	}
	if (self.theme) {
		params[@"theme"] = [self.theme getParams];
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
	return params;
}

# pragma mark - Setters

-(void)setSymbolStrokeWidth:(NSNumber *)symbolStrokeWidth {
	_symbolStrokeWidth = symbolStrokeWidth;
	[self updateNSObject:@"symbolStrokeWidth"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setSymbolSize:(NSNumber *)symbolSize {
	_symbolSize = symbolSize;
	[self updateNSObject:@"symbolSize"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setButtonSpacing:(NSNumber *)buttonSpacing {
	_buttonSpacing = buttonSpacing;
	[self updateNSObject:@"buttonSpacing"];
}

-(void)setClassName:(NSString *)className {
	_className = className;
	[self updateNSObject:@"className"];
}

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setX:(NSNumber *)x {
	_x = x;
	[self updateNSObject:@"x"];
}

-(void)setSymbol:(NSString *)symbol {
	_symbol = symbol;
	[self updateNSObject:@"symbol"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setOnclick:(HIFunction *)onclick {
	HIFunction *oldValue = _onclick;
	if(self.onclick) {
		[self removeObserver:self forKeyPath:@"onclick.isUpdated"];
	}
	_onclick = onclick;
	[self updateHIObject:oldValue newValue:onclick propertyName:@"onclick"];
}

-(void)setSymbolFill:(HIColor *)symbolFill {
	HIColor *oldValue = _symbolFill;
	if(self.symbolFill) {
		[self removeObserver:self forKeyPath:@"symbolFill.isUpdated"];
	}
	_symbolFill = symbolFill;
	[self updateHIObject:oldValue newValue:symbolFill propertyName:@"symbolFill"];
}

-(void)setSymbolY:(NSNumber *)symbolY {
	_symbolY = symbolY;
	[self updateNSObject:@"symbolY"];
}

-(void)setSymbolStroke:(HIColor *)symbolStroke {
	HIColor *oldValue = _symbolStroke;
	if(self.symbolStroke) {
		[self removeObserver:self forKeyPath:@"symbolStroke.isUpdated"];
	}
	_symbolStroke = symbolStroke;
	[self updateHIObject:oldValue newValue:symbolStroke propertyName:@"symbolStroke"];
}

-(void)setHeight:(NSNumber *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setText:(NSString *)text {
	_text = text;
	[self updateNSObject:@"text"];
}

-(void)setMenuClassName:(NSString *)menuClassName {
	_menuClassName = menuClassName;
	[self updateNSObject:@"menuClassName"];
}

-(void)set_titleKey:(NSString *)_titleKey {
	__titleKey = _titleKey;
	[self updateNSObject:@"_titleKey"];
}

-(void)setSymbolX:(NSNumber *)symbolX {
	_symbolX = symbolX;
	[self updateNSObject:@"symbolX"];
}

-(void)setTheme:(HITheme *)theme {
	HITheme *oldValue = _theme;
	if(self.theme) {
		[self removeObserver:self forKeyPath:@"theme.isUpdated"];
	}
	_theme = theme;
	[self updateHIObject:oldValue newValue:theme propertyName:@"theme"];
}

-(void)setMenuItems:(NSArray *)menuItems {
	NSArray *oldValue = _menuItems;
	_menuItems = menuItems;
	[self updateArrayObject:oldValue newValue:menuItems propertyName:@"menuItems"];
}

@end