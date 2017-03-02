#import "HIArearangeData.h"

@implementation HIArearangeData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.high) {
		params[@"high"] = self.high;
	}
	if (self.low) {
		params[@"low"] = self.low;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	return params;
}

@end