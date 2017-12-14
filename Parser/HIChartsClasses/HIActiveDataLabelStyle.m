#import "HIActiveDataLabelStyle.h"

@implementation HIActiveDataLabelStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.textDecoration) {
		params[@"textDecoration"] = self.textDecoration;
	}
	if (self.cursor) {
		params[@"cursor"] = self.cursor;
	}
	return params;
}

# pragma mark - Setters

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

-(void)setFontWeight:(NSString *)fontWeight {
	_fontWeight = fontWeight;
	[self updateNSObject:@"fontWeight"];
}

-(void)setTextDecoration:(NSString *)textDecoration {
	_textDecoration = textDecoration;
	[self updateNSObject:@"textDecoration"];
}

-(void)setCursor:(NSString *)cursor {
	_cursor = cursor;
	[self updateNSObject:@"cursor"];
}

@end