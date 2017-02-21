#import "YAxisPlotLines.h"

@implementation YAxisPlotLines

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.width) {
		params[@"width"] = self.width;
	}
	if (self.zIndex) {
		params[@"zIndex"] = self.zIndex;
	}
	if (self.id) {
		params[@"id"] = self.id;
	}
	if (self.color) {
		params[@"color"] = [self.color getString];
	}
	if (self.className) {
		params[@"className"] = self.className;
	}
	if (self.dashStyle) {
		params[@"dashStyle"] = self.dashStyle;
	}
	if (self.events) {
		params[@"events"] = self.events;
	}
	if (self.label) {
		params[@"label"] = [self.label getParams];
	}
	if (self.value) {
		params[@"value"] = self.value;
	}
	return params;
}

@end