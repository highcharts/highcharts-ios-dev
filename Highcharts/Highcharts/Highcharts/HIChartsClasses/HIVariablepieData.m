#import "HIVariablepieData.h"

@implementation HIVariablepieData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.sliced) {
		params[@"sliced"] = self.sliced;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	return params;
}

@end