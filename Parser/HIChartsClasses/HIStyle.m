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
	copyStyle.fontFamily = [self.fontFamily copyWithZone: zone];
	copyStyle.borderRadius = [self.borderRadius copyWithZone: zone];
	copyStyle.lineWidth = [self.lineWidth copyWithZone: zone];
	copyStyle.textOverflow = [self.textOverflow copyWithZone: zone];
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
	if (self.fontFamily) {
		params[@"fontFamily"] = self.fontFamily;
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

-(void)setFontFamily:(NSString *)fontFamily {
	_fontFamily = fontFamily;
	[self updateNSObject:@"fontFamily"];
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

-(void)setWhiteSpace:(NSString *)whiteSpace {
	_whiteSpace = whiteSpace;
	[self updateNSObject:@"whiteSpace"];
}

@end