#import "HIAccessibility.h"

@implementation HIAccessibility

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.screenReaderSectionFormatter) {
		params[@"screenReaderSectionFormatter"] = [self.screenReaderSectionFormatter getFunction];
	}
	if (self.pointDescriptionThreshold) {
		params[@"pointDescriptionThreshold"] = self.pointDescriptionThreshold;
	}
	if (self.pointDateFormat) {
		params[@"pointDateFormat"] = self.pointDateFormat;
	}
	if (self.keyboardNavigation) {
		params[@"keyboardNavigation"] = [self.keyboardNavigation getParams];
	}
	if (self.pointDateFormatter) {
		params[@"pointDateFormatter"] = [self.pointDateFormatter getFunction];
	}
	if (self.pointDescriptionFormatter) {
		params[@"pointDescriptionFormatter"] = [self.pointDescriptionFormatter getFunction];
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.seriesDescriptionFormatter) {
		params[@"seriesDescriptionFormatter"] = [self.seriesDescriptionFormatter getFunction];
	}
	if (self.describeSingleSeries) {
		params[@"describeSingleSeries"] = self.describeSingleSeries;
	}
	if (self.onTableAnchorClick) {
		params[@"onTableAnchorClick"] = [self.onTableAnchorClick getFunction];
	}
	return params;
}

@end