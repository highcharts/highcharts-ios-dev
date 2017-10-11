#import "HISunburstTooltip.h"

@implementation HISunburstTooltip

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.headerFormat) {
		params[@"headerFormat"] = self.headerFormat;
	}
	if (self.xDateFormat) {
		params[@"xDateFormat"] = self.xDateFormat;
	}
	if (self.valuePrefix) {
		params[@"valuePrefix"] = self.valuePrefix;
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = [self.dateTimeLabelFormats getParams];
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.footerFormat) {
		params[@"footerFormat"] = self.footerFormat;
	}
	if (self.pointFormatter) {
		params[@"pointFormatter"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.pointFormatter];
	}
	if (self.valueSuffix) {
		params[@"valueSuffix"] = self.valueSuffix;
	}
	if (self.hideDelay) {
		params[@"hideDelay"] = self.hideDelay;
	}
	if (self.followPointer) {
		params[@"followPointer"] = self.followPointer;
	}
	if (self.pointFormat) {
		params[@"pointFormat"] = self.pointFormat;
	}
	if (self.valueDecimals) {
		params[@"valueDecimals"] = self.valueDecimals;
	}
	if (self.split) {
		params[@"split"] = self.split;
	}
	if (self.followTouchMove) {
		params[@"followTouchMove"] = self.followTouchMove;
	}
	return params;
}

@end