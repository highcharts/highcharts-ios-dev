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
	copyContextButton.enabled = [self.enabled copyWithZone: zone];
	copyContextButton.theme = [self.theme copyWithZone: zone];
	copyContextButton.y = [self.y copyWithZone: zone];
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
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.theme) {
		params[@"theme"] = [self.theme getParams];
	}
	if (self.y) {
		params[@"y"] = self.y;
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

-(void)setMenuItems:(NSArray<NSString *> *)menuItems {
	NSArray<NSString *> *oldValue = _menuItems;
	_menuItems = menuItems;
	[self updateArrayObject:oldValue newValue:menuItems propertyName:@"menuItems"];
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

-(void)setSymbol:(NSString *)symbol {
	_symbol = symbol;
	[self updateNSObject:@"symbol"];
}

-(void)setSymbolStroke:(HIColor *)symbolStroke {
	HIColor *oldValue = _symbolStroke;
	if(self.symbolStroke) {
		[self removeObserver:self forKeyPath:@"symbolStroke.isUpdated"];
	}
	_symbolStroke = symbolStroke;
	[self updateHIObject:oldValue newValue:symbolStroke propertyName:@"symbolStroke"];
}

-(void)setText:(NSString *)text {
	_text = text;
	[self updateNSObject:@"text"];
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

-(void)setY:(NSNumber *)y {
	_y = y;
	[self updateNSObject:@"y"];
}

-(void)setSymbolStrokeWidth:(NSNumber *)symbolStrokeWidth {
	_symbolStrokeWidth = symbolStrokeWidth;
	[self updateNSObject:@"symbolStrokeWidth"];
}

@end