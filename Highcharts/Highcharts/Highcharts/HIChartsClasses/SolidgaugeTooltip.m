#import "SolidgaugeTooltip.h"

@implementation SolidgaugeTooltip

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.footerFormat) {
		params[@"footerFormat"] = self.footerFormat;
	}
	if (self.valuePrefix) {
		params[@"valuePrefix"] = self.valuePrefix;
	}
	if (self.valueSuffix) {
		params[@"valueSuffix"] = self.valueSuffix;
	}
	if (self.split) {
		params[@"split"] = self.split;
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = self.dateTimeLabelFormats;
	}
	if (self.valueDecimals) {
		params[@"valueDecimals"] = self.valueDecimals;
	}
	if (self.hideDelay) {
		params[@"hideDelay"] = self.hideDelay;
	}
	if (self.followPointer) {
		params[@"followPointer"] = self.followPointer;
	}
	if (self.headerFormat) {
		params[@"headerFormat"] = self.headerFormat;
	}
	if (self.pointFormat) {
		params[@"pointFormat"] = self.pointFormat;
	}
	if (self.pointFormatter) {
		params[@"pointFormatter"] = self.pointFormatter;
	}
	if (self.xDateFormat) {
		params[@"xDateFormat"] = self.xDateFormat;
	}
	if (self.followTouchMove) {
		params[@"followTouchMove"] = self.followTouchMove;
	}
	return params;
}

@end