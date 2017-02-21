#import "Title.h"

@implementation Title

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.margin) {
		params[@"margin"] = self.margin;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.widthAdjust) {
		params[@"widthAdjust"] = self.widthAdjust;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	return params;
}

@end