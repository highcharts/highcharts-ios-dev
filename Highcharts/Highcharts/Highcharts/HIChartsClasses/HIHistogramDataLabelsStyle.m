#import "HIHistogramDataLabelsStyle.h"

@implementation HIHistogramDataLabelsStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.textOutline) {
		params[@"textOutline"] = self.textOutline;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	return params;
}

@end