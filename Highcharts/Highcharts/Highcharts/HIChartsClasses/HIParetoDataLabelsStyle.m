#import "HIParetoDataLabelsStyle.h"

@implementation HIParetoDataLabelsStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.textOutline) {
		params[@"textOutline"] = self.textOutline;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	return params;
}

@end