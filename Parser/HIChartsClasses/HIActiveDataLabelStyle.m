#import "HIChartsJSONSerializableSubclass.h"
#import "HIActiveDataLabelStyle.h"

@implementation HIActiveDataLabelStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIActiveDataLabelStyle *copyActiveDataLabelStyle = [[HIActiveDataLabelStyle allocWithZone: zone] init];
	copyActiveDataLabelStyle.color = [self.color copyWithZone: zone];
	copyActiveDataLabelStyle.cursor = [self.cursor copyWithZone: zone];
	copyActiveDataLabelStyle.textDecoration = [self.textDecoration copyWithZone: zone];
	copyActiveDataLabelStyle.fontWeight = [self.fontWeight copyWithZone: zone];
	return copyActiveDataLabelStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
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

-(void)setColor:(NSString *)color {
	NSString *oldValue = _color;
	_color = color;
	[self updateNSObject:oldValue newValue:color propertyName:@"color"];
}

-(void)setCursor:(NSString *)cursor {
	NSString *oldValue = _cursor;
	_cursor = cursor;
	[self updateNSObject:oldValue newValue:cursor propertyName:@"cursor"];
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