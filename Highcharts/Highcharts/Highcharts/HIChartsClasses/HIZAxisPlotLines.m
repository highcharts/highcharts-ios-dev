#import "HIZAxisPlotLines.h"

@implementation HIZAxisPlotLines

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	return params;
}

@end