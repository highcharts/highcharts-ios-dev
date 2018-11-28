#import "HIChartsJSONSerializableSubclass.h"
#import "HIActiveAxisLabelStyle.h"

@implementation HIActiveAxisLabelStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIActiveAxisLabelStyle *copyActiveAxisLabelStyle = [[HIActiveAxisLabelStyle allocWithZone: zone] init];
	copyActiveAxisLabelStyle.cursor = [self.cursor copyWithZone: zone];
	copyActiveAxisLabelStyle.color = [self.color copyWithZone: zone];
	copyActiveAxisLabelStyle.textDecoration = [self.textDecoration copyWithZone: zone];
	copyActiveAxisLabelStyle.fontWeight = [self.fontWeight copyWithZone: zone];
	return copyActiveAxisLabelStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.textDecoration) {
		params[@"textDecoration"] = self.textDecoration;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	return params;
}

# pragma mark - Setters

-(void)setCursor:(NSString *)cursor {
	NSString *oldValue = _cursor;
	_cursor = cursor;
	[self updateNSObject:oldValue newValue:cursor propertyName:@"cursor"];
}

-(void)setColor:(NSString *)color {
	NSString *oldValue = _color;
	_color = color;
	[self updateNSObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setTextDecoration:(NSString *)textDecoration {
	NSString *oldValue = _textDecoration;
	_textDecoration = textDecoration;
	[self updateNSObject:oldValue newValue:textDecoration propertyName:@"textDecoration"];
}

-(void)setFontWeight:(NSString *)fontWeight {
	NSString *oldValue = _fontWeight;
	_fontWeight = fontWeight;
	[self updateNSObject:oldValue newValue:fontWeight propertyName:@"fontWeight"];
}

@end