#import "HIYAxisPlotLines.h"

@implementation HIYAxisPlotLines

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	return params;
}

@end