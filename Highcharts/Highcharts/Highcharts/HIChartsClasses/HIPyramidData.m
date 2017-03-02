#import "HIPyramidData.h"

@implementation HIPyramidData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	return params;
}

@end