#import "HIPieData.h"

@implementation HIPieData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.sliced) {
		params[@"sliced"] = self.sliced;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	return params;
}

@end