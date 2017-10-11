#import "HIYAxisPlotBands.h"

@implementation HIYAxisPlotBands

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.from) {
		params[@"from"] = self.from;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.borderWidth) {
		params[@"borderWidth"] = self.borderWidth;
	}
	if (self.thickness) {
		params[@"thickness"] = self.thickness;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.outerRadius) {
		params[@"outerRadius"] = self.outerRadius;
	}
	if (self.innerRadius) {
		params[@"innerRadius"] = self.innerRadius;
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	if (self.to) {
		params[@"to"] = self.to;
	}
	if (self.borderColor) {
		params[@"borderColor"] = [self.borderColor getData];
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	return params;
}

@end