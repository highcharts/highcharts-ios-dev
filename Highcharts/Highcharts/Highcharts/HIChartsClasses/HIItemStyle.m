#import "HIChartsJSONSerializableSubclass.h"
#import "HIItemStyle.h"

@implementation HIItemStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIItemStyle *copyItemStyle = [[HIItemStyle allocWithZone: zone] init];
	copyItemStyle.color = [self.color copyWithZone: zone];
	copyItemStyle.fontWeight = [self.fontWeight copyWithZone: zone];
	copyItemStyle.textOverflow = [self.textOverflow copyWithZone: zone];
	copyItemStyle.fontSize = [self.fontSize copyWithZone: zone];
	return copyItemStyle;
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
	if (self.textOverflow) {
		params[@"textOverflow"] = self.textOverflow;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
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

-(void)setTextOverflow:(NSString *)textOverflow {
	_textOverflow = textOverflow;
	[self updateNSObject:@"textOverflow"];
}

-(void)setFontSize:(NSString *)fontSize {
	_fontSize = fontSize;
	[self updateNSObject:@"fontSize"];
}

@end