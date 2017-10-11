#import "HIColumnrangeData.h"

@implementation HIColumnrangeData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.high) {
		params[@"high"] = self.high;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.low) {
		params[@"low"] = self.low;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	return params;
}

@end