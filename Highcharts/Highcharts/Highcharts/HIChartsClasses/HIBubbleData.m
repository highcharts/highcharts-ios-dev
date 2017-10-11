#import "HIBubbleData.h"

@implementation HIBubbleData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.z) {
		params[@"z"] = self.z;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	return params;
}

@end