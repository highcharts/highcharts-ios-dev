#import "HIWaterfallData.h"

@implementation HIWaterfallData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.isIntermediateSum) {
		params[@"isIntermediateSum"] = self.isIntermediateSum;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.isSum) {
		params[@"isSum"] = self.isSum;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	return params;
}

@end