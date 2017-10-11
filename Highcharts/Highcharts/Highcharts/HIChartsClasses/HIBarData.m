#import "HIBarData.h"

@implementation HIBarData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	return params;
}

@end