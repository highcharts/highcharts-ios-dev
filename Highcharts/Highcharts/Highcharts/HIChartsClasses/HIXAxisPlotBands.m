#import "HIXAxisPlotBands.h"

@implementation HIXAxisPlotBands

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	return params;
}

@end