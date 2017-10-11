#import "HIBulletData.h"

@implementation HIBulletData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.targetOptions) {
		params[@"targetOptions"] = [self.targetOptions getParams];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.target) {
		params[@"target"] = self.target;
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.drilldown) {
		params[@"drilldown"] = self.drilldown;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	return params;
}

@end