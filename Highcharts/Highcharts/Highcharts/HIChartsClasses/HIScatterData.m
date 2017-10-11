#import "HIScatterData.h"

@implementation HIScatterData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	return params;
}

@end