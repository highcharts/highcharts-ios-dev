#import "HIAreaData.h"

@implementation HIAreaData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	return params;
}

@end