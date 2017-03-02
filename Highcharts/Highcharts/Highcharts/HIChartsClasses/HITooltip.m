#import "HITooltip.h"

@implementation HITooltip

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.headerFormat) {
		params[@"headerFormat"] = self.headerFormat;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.followTouchMove) {
		params[@"followTouchMove"] = self.followTouchMove;
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = self.dateTimeLabelFormats;
	}
	if (self.footerFormat) {
		params[@"footerFormat"] = self.footerFormat;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.valueDecimals) {
		params[@"valueDecimals"] = self.valueDecimals;
	}
	if (self.followPointer) {
		params[@"followPointer"] = self.followPointer;
	}
	if (self.shared) {
		params[@"shared"] = self.shared;
	}
	if (self.xDateFormat) {
		params[@"xDateFormat"] = self.xDateFormat;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.hideDelay) {
		params[@"hideDelay"] = self.hideDelay;
	}
	if (self.pointFormatter) {
		params[@"pointFormatter"] = self.pointFormatter;
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.valuePrefix) {
		params[@"valuePrefix"] = self.valuePrefix;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.crosshairs) {
		params[@"crosshairs"] = self.crosshairs;
	}
	if (self.valueSuffix) {
		params[@"valueSuffix"] = self.valueSuffix;
	}
	if (self.snap) {
		params[@"snap"] = self.snap;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.positioner) {
		params[@"positioner"] = self.positioner;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.formatter) {
		params[@"formatter"] = self.formatter;
	}
	if (self.pointFormat) {
		params[@"pointFormat"] = self.pointFormat;
	}
	if (self.split) {
		params[@"split"] = self.split;
	}
	return params;
}

@end