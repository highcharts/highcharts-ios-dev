#import "LineData.h"

@implementation LineData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	return params;
}

@end