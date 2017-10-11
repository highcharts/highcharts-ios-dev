#import "HITreemapData.h"

@implementation HITreemapData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.colorValue) {
		params[@"colorValue"] = self.colorValue;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.parent) {
		params[@"parent"] = self.parent;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	return params;
}

@end