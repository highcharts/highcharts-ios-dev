#import "HISunburstData.h"

@implementation HISunburstData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.colorValue) {
		params[@"colorValue"] = self.colorValue;
	}
	if (self.pointPadding) {
		params[@"pointPadding"] = self.pointPadding;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.parent) {
		params[@"parent"] = self.parent;
	}
	if (self.className) {
		params[@"className"] = self.className;
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
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.weight) {
		params[@"weight"] = self.weight;
	}
	return params;
}

@end