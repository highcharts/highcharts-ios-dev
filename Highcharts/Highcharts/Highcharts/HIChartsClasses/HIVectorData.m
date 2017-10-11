#import "HIVectorData.h"

@implementation HIVectorData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.length) {
		params[@"length"] = self.length;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.direction) {
		params[@"direction"] = self.direction;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	return params;
}

@end