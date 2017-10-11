#import "HIPlotOptionsSunburstLevels.h"

@implementation HIPlotOptionsSunburstLevels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = self.borderColor;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.colorVariation) {
		params[@"colorVariation"] = [self.colorVariation getParams];
	}
	if (self.borderDashStyle) {
		params[@"borderDashStyle"] = self.borderDashStyle;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.rotationMode) {
		params[@"rotationMode"] = self.rotationMode;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	return params;
}

@end