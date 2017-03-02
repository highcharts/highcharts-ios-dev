#import "HISolidgaugeData.h"

@implementation HISolidgaugeData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.radius) {
		params[@"radius"] = self.radius;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	return params;
}

@end