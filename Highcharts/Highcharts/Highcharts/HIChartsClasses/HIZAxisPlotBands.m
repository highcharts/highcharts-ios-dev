#import "HIZAxisPlotBands.h"

@implementation HIZAxisPlotBands

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	return params;
}

@end