#import "HITooltip.h"

@implementation HITooltip

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.split) {
		params[@"split"] = self.split;
	}
	if (self.valuePrefix) {
		params[@"valuePrefix"] = self.valuePrefix;
	}
	if (self.hideDelay) {
		params[@"hideDelay"] = self.hideDelay;
	}
	if (self.headerFormat) {
		params[@"headerFormat"] = self.headerFormat;
	}
	if (self.pointFormatter) {
		params[@"pointFormatter"] = [self.pointFormatter getFunction];
	}
	if (self.footerFormat) {
		params[@"footerFormat"] = self.footerFormat;
	}
	if (self.dateTimeLabelFormats) {
		params[@"dateTimeLabelFormats"] = [self.dateTimeLabelFormats getParams];
	}
	if (self.followTouchMove) {
		params[@"followTouchMove"] = self.followTouchMove;
	}
	if (self.valueDecimals) {
		params[@"valueDecimals"] = self.valueDecimals;
	}
	if (self.followPointer) {
		params[@"followPointer"] = self.followPointer;
	}
	if (self.valueSuffix) {
		params[@"valueSuffix"] = self.valueSuffix;
	}
	if (self.padding) {
		params[@"padding"] = self.padding;
	}
	if (self.pointFormat) {
		params[@"pointFormat"] = self.pointFormat;
	}
	if (self.xDateFormat) {
		params[@"xDateFormat"] = self.xDateFormat;
	}
	if (self.nodeFormat) {
		params[@"nodeFormat"] = self.nodeFormat;
	}
	if (self.distance) {
		params[@"distance"] = self.distance;
	}
	if (self.style) {
		params[@"style"] = [self.style getParams];
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.positioner) {
		params[@"positioner"] = [self.positioner getFunction];
	}
	if (self.shadow) {
		params[@"shadow"] = self.shadow;
	}
	if (self.formatter) {
		params[@"formatter"] = [self.formatter getFunction];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.shared) {
		params[@"shared"] = self.shared;
	}
	if (self.animation) {
		params[@"animation"] = self.animation;
	}
	if (self.borderRadius) {
		params[@"borderRadius"] = self.borderRadius;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.backgroundColor) {
		params[@"backgroundColor"] = [self.backgroundColor getData];
	}
	if (self.shape) {
		params[@"shape"] = self.shape;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.snap) {
		params[@"snap"] = self.snap;
	}
	if (self.crosshairs) {
		params[@"crosshairs"] = self.crosshairs;
	}
	return params;
}

@end
