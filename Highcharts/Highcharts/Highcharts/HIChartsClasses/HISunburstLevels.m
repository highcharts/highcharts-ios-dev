#import "HISunburstLevels.h"

@implementation HISunburstLevels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderColor) {
		params[@"borderColor"] = self.borderColor;
	}
	if (self.colorVariation) {
		params[@"colorVariation"] = [self.colorVariation getParams];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.color) {
		params[@"color"] = self.color;
	}
	if (self.rotationMode) {
		params[@"rotationMode"] = self.rotationMode;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.borderDashStyle) {
		params[@"borderDashStyle"] = self.borderDashStyle;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	return params;
}

@end