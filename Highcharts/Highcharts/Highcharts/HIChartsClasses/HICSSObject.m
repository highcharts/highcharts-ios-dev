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
	copyCSSObject.textOutline = [self.textOutline copyWithZone: zone];
	copyCSSObject.textDecoration = [self.textDecoration copyWithZone: zone];
	copyCSSObject.textOverflow = [self.textOverflow copyWithZone: zone];
	copyCSSObject.transition = [self.transition copyWithZone: zone];
	copyCSSObject.top = [self.top copyWithZone: zone];
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
	if (self.textOutline) {
		params[@"textOutline"] = self.textOutline;
	}
	if (self.textDecoration) {
		params[@"textDecoration"] = self.textDecoration;
	}
	if (self.textOverflow) {
		params[@"textOverflow"] = self.textOverflow;
	}
	if (self.transition) {
		params[@"transition"] = self.transition;
	}
	if (self.top) {
		params[@"top"] = self.top;
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
	_background = background;
	[self updateNSObject:@"background"];
}

-(void)setBackgroundColor:(NSString *)backgroundColor {
	_backgroundColor = backgroundColor;
	[self updateNSObject:@"backgroundColor"];
}

-(void)setBorder:(NSString *)border {
	_border = border;
	[self updateNSObject:@"border"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

-(void)setCursor:(NSString *)cursor {
	_cursor = cursor;
	[self updateNSObject:@"cursor"];
}

-(void)setFontFamily:(NSString *)fontFamily {
	_fontFamily = fontFamily;
	[self updateNSObject:@"fontFamily"];
}

-(void)setFontSize:(NSString *)fontSize {
	_fontSize = fontSize;
	[self updateNSObject:@"fontSize"];
}

-(void)setFontWeight:(NSString *)fontWeight {
	_fontWeight = fontWeight;
	[self updateNSObject:@"fontWeight"];
}

-(void)setHeight:(NSNumber *)height {
	_height = height;
	[self updateNSObject:@"height"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

-(void)setOpacity:(NSNumber *)opacity {
	_opacity = opacity;
	[self updateNSObject:@"opacity"];
}

-(void)setPadding:(NSString *)padding {
	_padding = padding;
	[self updateNSObject:@"padding"];
}

-(void)setPointerEvents:(NSString *)pointerEvents {
	_pointerEvents = pointerEvents;
	[self updateNSObject:@"pointerEvents"];
}

-(void)setPosition:(NSString *)position {
	_position = position;
	[self updateNSObject:@"position"];
}

-(void)setTextAlign:(NSString *)textAlign {
	_textAlign = textAlign;
	[self updateNSObject:@"textAlign"];
}

-(void)setTextOutline:(NSString *)textOutline {
	_textOutline = textOutline;
	[self updateNSObject:@"textOutline"];
}

-(void)setTextDecoration:(NSString *)textDecoration {
	_textDecoration = textDecoration;
	[self updateNSObject:@"textDecoration"];
}

-(void)setTextOverflow:(NSString *)textOverflow {
	_textOverflow = textOverflow;
	[self updateNSObject:@"textOverflow"];
}

-(void)setTransition:(NSString *)transition {
	_transition = transition;
	[self updateNSObject:@"transition"];
}

-(void)setTop:(NSString *)top {
	_top = top;
	[self updateNSObject:@"top"];
}

-(void)setWhiteSpace:(NSString *)whiteSpace {
	_whiteSpace = whiteSpace;
	[self updateNSObject:@"whiteSpace"];
}

-(void)setWidth:(NSNumber *)width {
	_width = width;
	[self updateNSObject:@"width"];
}

@end