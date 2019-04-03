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
	copyStyle.fontSize = [self.fontSize copyWithZone: zone];
	copyStyle.textOutline = [self.textOutline copyWithZone: zone];
	return copyStyle;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.textOutline) {
		params[@"textOutline"] = self.textOutline;
	}
	return params;
}

# pragma mark - Setters

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

@end