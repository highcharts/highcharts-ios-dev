#import "HIVariwideData.h"

@implementation HIVariwideData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.z) {
		params[@"z"] = self.z;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	return params;
}

@end