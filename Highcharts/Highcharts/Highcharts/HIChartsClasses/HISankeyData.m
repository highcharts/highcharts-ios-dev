#import "HISankeyData.h"

@implementation HISankeyData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.className) {
		params[@"className"] = self.className;
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
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.weight) {
		params[@"weight"] = self.weight;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.outgoing) {
		params[@"outgoing"] = self.outgoing;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	return params;
}

@end