#import "HIChartsJSONSerializableSubclass.h"
#import "HIStyle.h"

@implementation HIStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIStyle *copyStyle = [[HIStyle allocWithZone: zone] init];
	copyStyle.fontWeight = [self.fontWeight copyWithZone: zone];
	copyStyle.color = [self.color copyWithZone: zone];
	copyStyle.fontSize = [self.fontSize copyWithZone: zone];
	copyStyle.opacity = [self.opacity copyWithZone: zone];
	copyStyle.position = [self.position copyWithZone: zone];
	copyStyle.textAlign = [self.textAlign copyWithZone: zone];
	copyStyle.backgroundColor = [self.backgroundColor copyWithZone: zone];
	copyStyle.fontFamily = [self.fontFamily copyWithZone: zone];
	copyStyle.textOutline = [self.textOutline copyWithZone: zone];
	copyStyle.borderRadius = [self.borderRadius copyWithZone: zone];
	copyStyle.lineWidth = [self.lineWidth copyWithZone: zone];
	copyStyle.textOverflow = [self.textOverflow copyWithZone: zone];
	copyStyle.cursor = [self.cursor copyWithZone: zone];
	copyStyle.pointerEvents = [self.pointerEvents copyWithZone: zone];
	copyStyle.whiteSpace = [self.whiteSpace copyWithZone: zone];
	return copyStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.position) {
		params[@"position"] = self.position;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = self.backgroundColor;
	}
	if (self.fontFamily) {
		params[@"fontFamily"] = self.fontFamily;
	}
	if (self.textOutline) {
		params[@"textOutline"] = self.textOutline;
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
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.pointerEvents) {
		params[@"pointerEvents"] = self.pointerEvents;
	}
	if (self.whiteSpace) {
		params[@"whiteSpace"] = self.whiteSpace;
	}
	return params;
}

# pragma mark - Setters

-(void)setFontWeight:(NSString *)fontWeight {
	_fontWeight = fontWeight;
	[self updateNSObject:@"fontWeight"];
}

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

-(void)setFontSize:(NSString *)fontSize {
	_fontSize = fontSize;
	[self updateNSObject:@"fontSize"];
}

-(void)setOpacity:(NSNumber *)opacity {
	_opacity = opacity;
	[self updateNSObject:@"opacity"];
}

-(void)setPosition:(NSString *)position {
	_position = position;
	[self updateNSObject:@"position"];
}

-(void)setTextAlign:(NSString *)textAlign {
	_textAlign = textAlign;
	[self updateNSObject:@"textAlign"];
}

-(void)setBackgroundColor:(NSString *)backgroundColor {
	_backgroundColor = backgroundColor;
	[self updateNSObject:@"backgroundColor"];
}

-(void)setFontFamily:(NSString *)fontFamily {
	_fontFamily = fontFamily;
	[self updateNSObject:@"fontFamily"];
}

-(void)setTextOutline:(NSString *)textOutline {
	_textOutline = textOutline;
	[self updateNSObject:@"textOutline"];
}

-(void)setBorderRadius:(NSNumber *)borderRadius {
	_borderRadius = borderRadius;
	[self updateNSObject:@"borderRadius"];
}

-(void)setLineWidth:(NSNumber *)lineWidth {
	_lineWidth = lineWidth;
	[self updateNSObject:@"lineWidth"];
}

-(void)setTextOverflow:(NSString *)textOverflow {
	_textOverflow = textOverflow;
	[self updateNSObject:@"textOverflow"];
}

-(void)setCursor:(NSString *)cursor {
	_cursor = cursor;
	[self updateNSObject:@"cursor"];
}

-(void)setPointerEvents:(NSString *)pointerEvents {
	_pointerEvents = pointerEvents;
	[self updateNSObject:@"pointerEvents"];
}

-(void)setWhiteSpace:(NSString *)whiteSpace {
	_whiteSpace = whiteSpace;
	[self updateNSObject:@"whiteSpace"];
}

@end