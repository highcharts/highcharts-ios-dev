#import "HIScatter3dData.h"

@implementation HIScatter3dData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.z) {
		params[@"z"] = self.z;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.marker) {
		params[@"marker"] = [self.marker getParams];
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	return params;
}

@end