#import "HIWordcloudData.h"

@implementation HIWordcloudData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.dataLabels) {
		params[@"dataLabels"] = self.dataLabels;
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
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	return params;
}

@end