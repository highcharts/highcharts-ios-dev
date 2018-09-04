#import "HIChartsJSONSerializableSubclass.h"
#import "HIActiveAxisLabelStyle.h"

@implementation HIActiveAxisLabelStyle

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIActiveAxisLabelStyle *copyActiveAxisLabelStyle = [[HIActiveAxisLabelStyle allocWithZone: zone] init];
	copyActiveAxisLabelStyle.color = [self.color copyWithZone: zone];
	copyActiveAxisLabelStyle.cursor = [self.cursor copyWithZone: zone];
	copyActiveAxisLabelStyle.textDecoration = [self.textDecoration copyWithZone: zone];
	copyActiveAxisLabelStyle.fontWeight = [self.fontWeight copyWithZone: zone];
	return copyActiveAxisLabelStyle;
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
	_color = color;
	[self updateNSObject:@"color"];
}

-(void)setCursor:(NSString *)cursor {
	_cursor = cursor;
	[self updateNSObject:@"cursor"];
}

-(void)setTextDecoration:(NSString *)textDecoration {
	_textDecoration = textDecoration;
	[self updateNSObject:@"textDecoration"];
}

-(void)setFontWeight:(NSString *)fontWeight {
	_fontWeight = fontWeight;
	[self updateNSObject:@"fontWeight"];
}

@end