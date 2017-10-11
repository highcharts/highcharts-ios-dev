#import "HIPyramidData.h"

@implementation HIPyramidData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	return params;
}

@end