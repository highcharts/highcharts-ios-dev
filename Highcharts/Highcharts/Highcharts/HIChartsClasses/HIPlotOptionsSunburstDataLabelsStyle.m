#import "HIPlotOptionsSunburstDataLabelsStyle.h"

@implementation HIPlotOptionsSunburstDataLabelsStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.textOutline) {
		params[@"textOutline"] = self.textOutline;
	}
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.textOverflow) {
		params[@"textOverflow"] = self.textOverflow;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	return params;
}

@end