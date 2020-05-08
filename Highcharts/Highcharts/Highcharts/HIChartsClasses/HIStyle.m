#import "HIChartsJSONSerializableSubclass.h"
#import "HIStyle.h"

@implementation HIStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIStyle *copyStyle = [[HIStyle allocWithZone: zone] init];
	copyStyle.transition = [self.transition copyWithZone: zone];
	copyStyle.fontWeight = [self.fontWeight copyWithZone: zone];
	copyStyle.fontSize = [self.fontSize copyWithZone: zone];
	copyStyle.textOutline = [self.textOutline copyWithZone: zone];
	copyStyle.color = [self.color copyWithZone: zone];
	copyStyle.cursor = [self.cursor copyWithZone: zone];
	copyStyle.borderRadius = [self.borderRadius copyWithZone: zone];
	copyStyle.lineWidth = [self.lineWidth copyWithZone: zone];
	copyStyle.textOverflow = [self.textOverflow copyWithZone: zone];
	copyStyle.whiteSpace = [self.whiteSpace copyWithZone: zone];
	copyStyle.stroke = [self.stroke copyWithZone: zone];
	copyStyle.strokeWidth = [self.strokeWidth copyWithZone: zone];
	copyStyle.fill = [self.fill copyWithZone: zone];
	return copyStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.transition) {
		params[@"transition"] = self.transition;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.textOutline) {
		params[@"textOutline"] = self.textOutline;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.textOverflow) {
		params[@"textOverflow"] = self.textOverflow;
	}
	if (self.whiteSpace) {
		params[@"whiteSpace"] = self.whiteSpace;
	}
	if (self.stroke) {
		params[@"stroke"] = self.stroke;
	}
	if (self.strokeWidth) {
		params[@"stroke-width"] = self.strokeWidth;
	}
	if (self.fill) {
		params[@"fill"] = self.fill;
	}
	return params;
}

# pragma mark - Setters

-(void)setTransition:(NSString *)transition {
	NSString *oldValue = _transition;
	_transition = transition;
	[self updateNSObject:oldValue newValue:transition propertyName:@"transition"];
}

-(void)setFontWeight:(NSString *)fontWeight {
	NSString *oldValue = _fontWeight;
	_fontWeight = fontWeight;
	[self updateNSObject:oldValue newValue:fontWeight propertyName:@"fontWeight"];
}

-(void)setFontSize:(NSString *)fontSize {
	NSString *oldValue = _fontSize;
	_fontSize = fontSize;
	[self updateNSObject:oldValue newValue:fontSize propertyName:@"fontSize"];
}

-(void)setTextOutline:(NSString *)textOutline {
	NSString *oldValue = _textOutline;
	_textOutline = textOutline;
	[self updateNSObject:oldValue newValue:textOutline propertyName:@"textOutline"];
}

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

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setTextOverflow:(NSString *)textOverflow {
	NSString *oldValue = _textOverflow;
	_textOverflow = textOverflow;
	[self updateNSObject:oldValue newValue:textOverflow propertyName:@"textOverflow"];
}

-(void)setWhiteSpace:(NSString *)whiteSpace {
	NSString *oldValue = _whiteSpace;
	_whiteSpace = whiteSpace;
	[self updateNSObject:oldValue newValue:whiteSpace propertyName:@"whiteSpace"];
}

-(void)setStroke:(NSString *)stroke {
	NSString *oldValue = _stroke;
	_stroke = stroke;
	[self updateNSObject:oldValue newValue:stroke propertyName:@"stroke"];
}

-(void)setStrokeWidth:(NSNumber *)strokeWidth {
	NSNumber *oldValue = _strokeWidth;
	_strokeWidth = strokeWidth;
	[self updateNSObject:oldValue newValue:strokeWidth propertyName:@"strokeWidth"];
}

-(void)setFill:(NSString *)fill {
	NSString *oldValue = _fill;
	_fill = fill;
	[self updateNSObject:oldValue newValue:fill propertyName:@"fill"];
}

@end