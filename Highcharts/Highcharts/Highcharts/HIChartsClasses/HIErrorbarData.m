#import "HIErrorbarData.h"

@implementation HIErrorbarData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.id) {
		params[@"id"] = self.id;
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
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.low) {
		params[@"low"] = self.low;
	}
	if (self.high) {
		params[@"high"] = self.high;
	}
	return params;
}

@end