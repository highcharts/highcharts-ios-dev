#import "XAxisPlotBands.h"

@implementation XAxisPlotBands

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	return params;
}

@end