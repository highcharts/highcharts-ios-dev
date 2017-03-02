#import "HIAreasplinerangeData.h"

@implementation HIAreasplinerangeData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.low) {
		params[@"low"] = self.low;
	}
	if (self.high) {
		params[@"high"] = self.high;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	return params;
}

@end