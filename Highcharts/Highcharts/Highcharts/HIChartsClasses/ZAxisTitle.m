#import "ZAxisTitle.h"

@implementation ZAxisTitle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.enabled) {
		params[@"enabled"] = self.enabled;
	}
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.rotation) {
		params[@"rotation"] = self.rotation;
	}
	if (self.offset) {
		params[@"offset"] = self.offset;
	}
	return params;
}

@end