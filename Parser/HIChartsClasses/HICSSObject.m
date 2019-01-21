#import "HIChartsJSONSerializableSubclass.h"
#import "HICSSObject.h"

@implementation HICSSObject

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HICSSObject *copyCSSObject = [[HICSSObject allocWithZone: zone] init];
	copyCSSObject.background = [self.background copyWithZone: zone];
	copyCSSObject.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyCSSObject.border = [self.border copyWithZone: zone];
	copyCSSObject.borderRadius = [self.borderRadius copyWithZone: zone];
	copyCSSObject.color = [self.color copyWithZone: zone];
	copyCSSObject.cursor = [self.cursor copyWithZone: zone];
	copyCSSObject.fontFamily = [self.fontFamily copyWithZone: zone];
	copyCSSObject.fontSize = [self.fontSize copyWithZone: zone];
	copyCSSObject.fontWeight = [self.fontWeight copyWithZone: zone];
	copyCSSObject.height = [self.height copyWithZone: zone];
	copyCSSObject.lineWidth = [self.lineWidth copyWithZone: zone];
	copyCSSObject.opacity = [self.opacity copyWithZone: zone];
	copyCSSObject.padding = [self.padding copyWithZone: zone];
	copyCSSObject.pointerEvents = [self.pointerEvents copyWithZone: zone];
	copyCSSObject.position = [self.position copyWithZone: zone];
	copyCSSObject.textAlign = [self.textAlign copyWithZone: zone];
	copyCSSObject.textDecoration = [self.textDecoration copyWithZone: zone];
	copyCSSObject.textOutline = [self.textOutline copyWithZone: zone];
	copyCSSObject.textOverflow = [self.textOverflow copyWithZone: zone];
	copyCSSObject.top = [self.top copyWithZone: zone];
	copyCSSObject.transition = [self.transition copyWithZone: zone];
	copyCSSObject.whiteSpace = [self.whiteSpace copyWithZone: zone];
	copyCSSObject.width = [self.width copyWithZone: zone];
	return copyCSSObject;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.background) {
		params[@"background"] = self.background;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = self.backgroundColor;
	}
	if (self.border) {
		params[@"border"] = self.border;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.fontFamily) {
		params[@"fontFamily"] = self.fontFamily;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.height) {
		params[@"height"] = self.height;
	}
	if (self.lineWidth) {
		params[@"lineWidth"] = self.lineWidth;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.pointerEvents) {
		params[@"pointerEvents"] = self.pointerEvents;
	}
	if (self.position) {
		params[@"position"] = self.position;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.textDecoration) {
		params[@"textDecoration"] = self.textDecoration;
	}
	if (self.textOutline) {
		params[@"textOutline"] = self.textOutline;
	}
	if (self.textOverflow) {
		params[@"textOverflow"] = self.textOverflow;
	}
	if (self.top) {
		params[@"top"] = self.top;
	}
	if (self.transition) {
		params[@"transition"] = self.transition;
	}
	if (self.whiteSpace) {
		params[@"whiteSpace"] = self.whiteSpace;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	return params;
}

# pragma mark - Setters

-(void)setBackground:(NSString *)background {
	NSString *oldValue = _background;
	_background = background;
	[self updateNSObject:oldValue newValue:background propertyName:@"background"];
}

-(void)setBackgroundColor:(NSString *)backgroundColor {
	NSString *oldValue = _backgroundColor;
	_backgroundColor = backgroundColor;
	[self updateNSObject:oldValue newValue:backgroundColor propertyName:@"backgroundColor"];
}

-(void)setBorder:(NSString *)border {
	NSString *oldValue = _border;
	_border = border;
	[self updateNSObject:oldValue newValue:border propertyName:@"border"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	NSNumber *oldValue = _borderRadius;
	_borderRadius = borderRadius;
	[self updateNSObject:oldValue newValue:borderRadius propertyName:@"borderRadius"];
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

-(void)setFontFamily:(NSString *)fontFamily {
	NSString *oldValue = _fontFamily;
	_fontFamily = fontFamily;
	[self updateNSObject:oldValue newValue:fontFamily propertyName:@"fontFamily"];
}

-(void)setFontSize:(NSString *)fontSize {
	NSString *oldValue = _fontSize;
	_fontSize = fontSize;
	[self updateNSObject:oldValue newValue:fontSize propertyName:@"fontSize"];
}

-(void)setFontWeight:(NSString *)fontWeight {
	NSString *oldValue = _fontWeight;
	_fontWeight = fontWeight;
	[self updateNSObject:oldValue newValue:fontWeight propertyName:@"fontWeight"];
}

-(void)setHeight:(NSNumber *)height {
	NSNumber *oldValue = _height;
	_height = height;
	[self updateNSObject:oldValue newValue:height propertyName:@"height"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	NSNumber *oldValue = _lineWidth;
	_lineWidth = lineWidth;
	[self updateNSObject:oldValue newValue:lineWidth propertyName:@"lineWidth"];
}

-(void)setOpacity:(NSNumber *)opacity {
	NSNumber *oldValue = _opacity;
	_opacity = opacity;
	[self updateNSObject:oldValue newValue:opacity propertyName:@"opacity"];
}

-(void)setPadding:(NSString *)padding {
	NSString *oldValue = _padding;
	_padding = padding;
	[self updateNSObject:oldValue newValue:padding propertyName:@"padding"];
}

-(void)setPointerEvents:(NSString *)pointerEvents {
	NSString *oldValue = _pointerEvents;
	_pointerEvents = pointerEvents;
	[self updateNSObject:oldValue newValue:pointerEvents propertyName:@"pointerEvents"];
}

-(void)setPosition:(NSString *)position {
	NSString *oldValue = _position;
	_position = position;
	[self updateNSObject:oldValue newValue:position propertyName:@"position"];
}

-(void)setTextAlign:(NSString *)textAlign {
	NSString *oldValue = _textAlign;
	_textAlign = textAlign;
	[self updateNSObject:oldValue newValue:textAlign propertyName:@"textAlign"];
}

-(void)setTextDecoration:(NSString *)textDecoration {
	NSString *oldValue = _textDecoration;
	_textDecoration = textDecoration;
	[self updateNSObject:oldValue newValue:textDecoration propertyName:@"textDecoration"];
}

-(void)setTextOutline:(NSString *)textOutline {
	NSString *oldValue = _textOutline;
	_textOutline = textOutline;
	[self updateNSObject:oldValue newValue:textOutline propertyName:@"textOutline"];
}

-(void)setTextOverflow:(NSString *)textOverflow {
	NSString *oldValue = _textOverflow;
	_textOverflow = textOverflow;
	[self updateNSObject:oldValue newValue:textOverflow propertyName:@"textOverflow"];
}

-(void)setTop:(NSString *)top {
	NSString *oldValue = _top;
	_top = top;
	[self updateNSObject:oldValue newValue:top propertyName:@"top"];
}

-(void)setTransition:(NSString *)transition {
	NSString *oldValue = _transition;
	_transition = transition;
	[self updateNSObject:oldValue newValue:transition propertyName:@"transition"];
}

-(void)setWhiteSpace:(NSString *)whiteSpace {
	NSString *oldValue = _whiteSpace;
	_whiteSpace = whiteSpace;
	[self updateNSObject:oldValue newValue:whiteSpace propertyName:@"whiteSpace"];
}

-(void)setWidth:(NSNumber *)width {
	NSNumber *oldValue = _width;
	_width = width;
	[self updateNSObject:oldValue newValue:width propertyName:@"width"];
}

@end