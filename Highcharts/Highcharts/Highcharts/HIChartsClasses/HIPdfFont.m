#import "HIChartsJSONSerializableSubclass.h"
#import "HIPdfFont.h"

@implementation HIPdfFont

-(instancetype)init {
	return [super init];
}

-(id)copyWithZone:(NSZone *)zone {
	[super copyWithZone:zone];
	HIPdfFont *copyPdfFont = [[HIPdfFont allocWithZone: zone] init];
	copyPdfFont.normal = [self.normal copyWithZone: zone];
	copyPdfFont.bold = [self.bold copyWithZone: zone];
	copyPdfFont.italic = [self.italic copyWithZone: zone];
	copyPdfFont.bolditalic = [self.bolditalic copyWithZone: zone];
	return copyPdfFont;
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.normal) {
		params[@"normal"] = self.normal;
	}
	if (self.bold) {
		params[@"bold"] = self.bold;
	}
	if (self.italic) {
		params[@"italic"] = self.italic;
	}
	if (self.bolditalic) {
		params[@"bolditalic"] = self.bolditalic;
	}
	return params;
}

# pragma mark - Setters

-(void)setNormal:(NSString *)normal {
	NSString *oldValue = _normal;
	_normal = normal;
	[self updateNSObject:oldValue newValue:normal propertyName:@"normal"];
}

-(void)setBold:(NSString *)bold {
	NSString *oldValue = _bold;
	_bold = bold;
	[self updateNSObject:oldValue newValue:bold propertyName:@"bold"];
}

-(void)setItalic:(NSString *)italic {
	NSString *oldValue = _italic;
	_italic = italic;
	[self updateNSObject:oldValue newValue:italic propertyName:@"italic"];
}

-(void)setBolditalic:(NSString *)bolditalic {
	NSString *oldValue = _bolditalic;
	_bolditalic = bolditalic;
	[self updateNSObject:oldValue newValue:bolditalic propertyName:@"bolditalic"];
}

@end