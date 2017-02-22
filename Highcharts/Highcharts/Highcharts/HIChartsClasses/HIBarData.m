#import "HIBarData.h"

@implementation HIBarData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	return params;
}

@end