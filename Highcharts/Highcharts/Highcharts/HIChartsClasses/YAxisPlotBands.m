#import "YAxisPlotBands.h"

@implementation YAxisPlotBands

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.outerRadius) {
		params[@"outerRadius"] = self.outerRadius;
	}
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.thickness) {
		params[@"thickness"] = self.thickness;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getString];
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	return params;
}

@end