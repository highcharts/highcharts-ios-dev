#import "HIFunnelData.h"

@implementation HIFunnelData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.legendIndex) {
		params[@"legendIndex"] = self.legendIndex;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
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
	return params;
}

@end