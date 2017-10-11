#import "HIPlotOptionsFunnelDataLabelsStyle.h"

@implementation HIPlotOptionsFunnelDataLabelsStyle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.fontSize) {
		params[@"fontSize"] = self.fontSize;
	}
	if (self.fontWeight) {
		params[@"fontWeight"] = self.fontWeight;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.textOutline) {
		params[@"textOutline"] = self.textOutline;
	}
	return params;
}

@end