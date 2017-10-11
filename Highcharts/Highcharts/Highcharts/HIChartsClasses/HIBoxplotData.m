#import "HIBoxplotData.h"

@implementation HIBoxplotData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.median) {
		params[@"median"] = self.median;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.low) {
		params[@"low"] = self.low;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.high) {
		params[@"high"] = self.high;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.q1) {
		params[@"q1"] = self.q1;
	}
	if (self.q3) {
		params[@"q3"] = self.q3;
	}
	return params;
}

@end