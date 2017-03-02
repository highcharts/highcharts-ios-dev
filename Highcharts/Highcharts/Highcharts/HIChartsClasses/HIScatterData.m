#import "HIScatterData.h"

@implementation HIScatterData

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
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.id) {
		params[@"id"] = self.id;
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
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	return params;
}

@end