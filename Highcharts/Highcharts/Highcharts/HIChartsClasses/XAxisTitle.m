#import "XAxisTitle.h"

@implementation XAxisTitle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	return params;
}

@end