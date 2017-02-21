#import "TreemapLevels.h"

@implementation TreemapLevels

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.layoutStartingDirection) {
		params[@"layoutStartingDirection"] = self.layoutStartingDirection;
	}
	if (self.layoutAlgorithm) {
		params[@"layoutAlgorithm"] = self.layoutAlgorithm;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.borderDashStyle) {
		params[@"borderDashStyle"] = self.borderDashStyle;
	}
	if (self.level) {
		params[@"level"] = self.level;
	}
	return params;
}

@end