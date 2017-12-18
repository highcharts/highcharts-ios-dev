#import "HIChartsJSONSerializableSubclass.h"
#import "HIStyle.h"

@implementation HIStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.textOutline) {
		params[@"textOutline"] = self.textOutline;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = self.backgroundColor;
	}
	if (self.textAlign) {
		params[@"textAlign"] = self.textAlign;
	}
	if (self.opacity) {
		params[@"opacity"] = self.opacity;
	}
	if (self.position) {
		params[@"position"] = self.position;
	}
	if (self.textOverflow) {
		params[@"textOverflow"] = self.textOverflow;
	}
	if (self.fontFamily) {
		params[@"fontFamily"] = self.fontFamily;
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

-(void)setFontSize:(NSString *)fontSize {
	_fontSize = fontSize;
	[self updateNSObject:@"fontSize"];
}

-(void)setTextOutline:(NSString *)textOutline {
	_textOutline = textOutline;
	[self updateNSObject:@"textOutline"];
}

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

-(void)setFontWeight:(NSString *)fontWeight {
	_fontWeight = fontWeight;
	[self updateNSObject:@"fontWeight"];
}

-(void)setCursor:(NSString *)cursor {
	_cursor = cursor;
	[self updateNSObject:@"cursor"];
}

-(void)setBackgroundColor:(NSString *)backgroundColor {
	_backgroundColor = backgroundColor;
	[self updateNSObject:@"backgroundColor"];
}

-(void)setTextAlign:(NSString *)textAlign {
	_textAlign = textAlign;
	[self updateNSObject:@"textAlign"];
}

-(void)setOpacity:(NSNumber *)opacity {
	_opacity = opacity;
	[self updateNSObject:@"opacity"];
}

-(void)setPosition:(NSString *)position {
	_position = position;
	[self updateNSObject:@"position"];
}

-(void)setTextOverflow:(NSString *)textOverflow {
	_textOverflow = textOverflow;
	[self updateNSObject:@"textOverflow"];
}

-(void)setFontFamily:(NSString *)fontFamily {
	_fontFamily = fontFamily;
	[self updateNSObject:@"fontFamily"];
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