#import "HIZAxisPlotLines.h"

@implementation HIZAxisPlotLines

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.color) {
		params[@"color"] = [self.color getData];
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	return params;
}

@end