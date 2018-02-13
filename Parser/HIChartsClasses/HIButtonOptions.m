#import "HIChartsJSONSerializableSubclass.h"
#import "HIButtonOptions.h"

@implementation HIButtonOptions

-(instancetype)init {
	return [super init];
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
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setSymbolFill:(HIColor *)symbolFill {
	HIColor *oldValue = _symbolFill;
	if(self.symbolFill) {
		[self removeObserver:self forKeyPath:@"symbolFill.isUpdated"];
	}
	_symbolFill = symbolFill;
	[self updateHIObject:oldValue newValue:symbolFill propertyName:@"symbolFill"];
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