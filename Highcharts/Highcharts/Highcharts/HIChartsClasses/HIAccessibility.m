#import "HIAccessibility.h"

@implementation HIAccessibility

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.pointDateFormat) {
		params[@"pointDateFormat"] = self.pointDateFormat;
	}
	if (self.keyboardNavigation) {
		params[@"keyboardNavigation"] = [self.keyboardNavigation getParams];
	}
	if (self.onTableAnchorClick) {
		params[@"onTableAnchorClick"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.onTableAnchorClick];
	}
	if (self.screenReaderSectionFormatter) {
		params[@"screenReaderSectionFormatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.screenReaderSectionFormatter];
	}
	if (self.pointDateFormatter) {
		params[@"pointDateFormatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.pointDateFormatter];
	}
	if (self.describeSingleSeries) {
		params[@"describeSingleSeries"] = self.describeSingleSeries;
	}
	if (self.pointDescriptionThreshold) {
		params[@"pointDescriptionThreshold"] = self.pointDescriptionThreshold;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.pointDescriptionFormatter];
	}
	if (self.seriesDescriptionFormatter) {
		params[@"seriesDescriptionFormatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.seriesDescriptionFormatter];
	}
	return params;
}

@end