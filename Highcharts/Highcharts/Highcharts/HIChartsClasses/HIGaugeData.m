#import "HIGaugeData.h"

@implementation HIGaugeData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	return params;
}

@end