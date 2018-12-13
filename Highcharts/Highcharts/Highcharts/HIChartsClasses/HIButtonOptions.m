#import "HIChartsJSONSerializableSubclass.h"
#import "HIButtonOptions.h"

@implementation HIButtonOptions

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIButtonOptions *copyButtonOptions = [[HIButtonOptions allocWithZone: zone] init];
	copyButtonOptions.symbolStroke = [self.symbolStroke copyWithZone: zone];
	copyButtonOptions.symbolFill = [self.symbolFill copyWithZone: zone];
	copyButtonOptions.text = [self.text copyWithZone: zone];
	copyButtonOptions.enabled = [self.enabled copyWithZone: zone];
	copyButtonOptions.theme = [self.theme copyWithZone: zone];
	copyButtonOptions.y = [self.y copyWithZone: zone];
	copyButtonOptions.symbolStrokeWidth = [self.symbolStrokeWidth copyWithZone: zone];
	return copyButtonOptions;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.symbolStroke) {
		params[@"symbolStroke"] = [self.symbolStroke getData];
	}
	if (self.symbolFill) {
		params[@"symbolFill"] = [self.symbolFill getData];
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

-(void)setSymbolStroke:(HIColor *)symbolStroke {
	HIColor *oldValue = _symbolStroke;
	if(self.symbolStroke) {
		[self removeObserver:self forKeyPath:@"symbolStroke.isUpdated"];
	}
	_symbolStroke = symbolStroke;
	[self updateHIObject:oldValue newValue:symbolStroke propertyName:@"symbolStroke"];
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