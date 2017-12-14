#import "HIItemStyle.h"

@implementation HIItemStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.textOverflow) {
		params[@"textOverflow"] = self.textOverflow;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	return params;
}

# pragma mark - Setters

-(void)setFontWeight:(NSString *)fontWeight {
	_fontWeight = fontWeight;
	[self updateNSObject:@"fontWeight"];
}

-(void)setTextOverflow:(NSString *)textOverflow {
	_textOverflow = textOverflow;
	[self updateNSObject:@"textOverflow"];
}

-(void)setFontSize:(NSString *)fontSize {
	_fontSize = fontSize;
	[self updateNSObject:@"fontSize"];
}

-(void)setColor:(NSString *)color {
	_color = color;
	[self updateNSObject:@"color"];
}

@end