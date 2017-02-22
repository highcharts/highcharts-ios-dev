#import "HIErrorbarData.h"

@implementation HIErrorbarData

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.labelrank) {
		params[@"labelrank"] = self.labelrank;
	}
	if (self.definition) {
		params[@"definition"] = self.definition;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.name) {
		params[@"name"] = self.name;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.colorIndex) {
		params[@"colorIndex"] = self.colorIndex;
	}
	if (self.high) {
		params[@"high"] = self.high;
	}
	if (self.selected) {
		params[@"selected"] = self.selected;
	}
	if (self.events) {
		params[@"events"] = [self.events getParams];
	}
	if (self.low) {
		params[@"low"] = self.low;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	return params;
}

@end