#import "TreemapData.h"

@implementation TreemapData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.colorValue) {
		params[@"colorValue"] = self.colorValue;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.parent) {
		params[@"parent"] = self.parent;
	}
	return params;
}

@end