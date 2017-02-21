#import "PlotOptionsTreemapLevels.h"

@implementation PlotOptionsTreemapLevels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.level) {
		params[@"level"] = self.level;
	}
	if (self.borderDashStyle) {
		params[@"borderDashStyle"] = self.borderDashStyle;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	return params;
}

@end