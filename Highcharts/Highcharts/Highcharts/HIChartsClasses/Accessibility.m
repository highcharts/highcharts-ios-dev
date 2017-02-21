#import "Accessibility.h"

@implementation Accessibility

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
		params[@"onTableAnchorClick"] = self.onTableAnchorClick;
	}
	if (self.screenReaderSectionFormatter) {
		params[@"screenReaderSectionFormatter"] = self.screenReaderSectionFormatter;
	}
	if (self.pointDateFormatter) {
		params[@"pointDateFormatter"] = self.pointDateFormatter;
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
		params[@"pointDescriptionFormatter"] = self.pointDescriptionFormatter;
	}
	if (self.seriesDescriptionFormatter) {
		params[@"seriesDescriptionFormatter"] = self.seriesDescriptionFormatter;
	}
	return params;
}

@end