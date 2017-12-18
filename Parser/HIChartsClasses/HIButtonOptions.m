#import "HIChartsJSONSerializableSubclass.h"
#import "HIButtonOptions.h"

@implementation HIButtonOptions

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.theme) {
		params[@"theme"] = [self.theme getParams];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.symbolFill) {
		params[@"symbolFill"] = [self.symbolFill getData];
	}
	if (self.symbolStroke) {
		params[@"symbolStroke"] = [self.symbolStroke getData];
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.symbolSize) {
		params[@"symbolSize"] = self.symbolSize;
	}
	if (self.symbolStrokeWidth) {
		params[@"symbolStrokeWidth"] = self.symbolStrokeWidth;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.symbolX) {
		params[@"symbolX"] = self.symbolX;
	}
	if (self.symbolY) {
		params[@"symbolY"] = self.symbolY;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.buttonSpacing) {
		params[@"buttonSpacing"] = self.buttonSpacing;
	}
	return params;
}

# pragma mark - Setters

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

-(void)setSymbolFill:(HIColor *)symbolFill {
	HIColor *oldValue = _symbolFill;
	if(self.symbolFill) {
		[self removeObserver:self forKeyPath:@"symbolFill.isUpdated"];
	}
	_symbolFill = symbolFill;
	[self updateHIObject:oldValue newValue:symbolFill propertyName:@"symbolFill"];
}

-(void)setSymbolStroke:(HIColor *)symbolStroke {
	HIColor *oldValue = _symbolStroke;
	if(self.symbolStroke) {
		[self removeObserver:self forKeyPath:@"symbolStroke.isUpdated"];
	}
	_symbolStroke = symbolStroke;
	[self updateHIObject:oldValue newValue:symbolStroke propertyName:@"symbolStroke"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

-(void)setVerticalAlign:(NSString *)verticalAlign {
	_verticalAlign = verticalAlign;
	[self updateNSObject:@"verticalAlign"];
}

-(void)setSymbolSize:(NSNumber *)symbolSize {
	_symbolSize = symbolSize;
	[self updateNSObject:@"symbolSize"];
}

-(void)setSymbolStrokeWidth:(NSNumber *)symbolStrokeWidth {
	_symbolStrokeWidth = symbolStrokeWidth;
	[self updateNSObject:@"symbolStrokeWidth"];
}

-(void)setText:(NSString *)text {
	_text = text;
	[self updateNSObject:@"text"];
}

-(void)setAlign:(NSString *)align {
	_align = align;
	[self updateNSObject:@"align"];
}

-(void)setSymbolX:(NSNumber *)symbolX {
	_symbolX = symbolX;
	[self updateNSObject:@"symbolX"];
}

-(void)setSymbolY:(NSNumber *)symbolY {
	_symbolY = symbolY;
	[self updateNSObject:@"symbolY"];
}

-(void)setHeight:(NSNumber *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setEnabled:(NSNumber *)enabled {
	_enabled = enabled;
	[self updateNSObject:@"enabled"];
}

-(void)setButtonSpacing:(NSNumber *)buttonSpacing {
	_buttonSpacing = buttonSpacing;
	[self updateNSObject:@"buttonSpacing"];
}

@end