#import "HIPlotOptionsTreemapLevels.h"

@implementation HIPlotOptionsTreemapLevels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.borderDashStyle) {
		params[@"borderDashStyle"] = self.borderDashStyle;
	}
	if (self.colorVariation) {
		params[@"colorVariation"] = [self.colorVariation getParams];
	}
	if (self.level) {
		params[@"level"] = self.level;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	return params;
}

@end