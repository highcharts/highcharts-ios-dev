#import "GaugeData.h"

@implementation GaugeData

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
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	return params;
}

@end