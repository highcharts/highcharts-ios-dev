#import "AreasplineData.h"

@implementation AreasplineData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	return params;
}

@end