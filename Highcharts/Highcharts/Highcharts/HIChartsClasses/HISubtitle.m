#import "HISubtitle.h"

@implementation HISubtitle

-(instancetype)init {
	return [super init];
}

-(NSDictionary *)getParams
{
	NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];
	if (self.style) {
		params[@"style"] = self.style;
	}
	if (self.y) {
		params[@"y"] = self.y;
	}
	if (self.verticalAlign) {
		params[@"verticalAlign"] = self.verticalAlign;
	}
	if (self.text) {
		params[@"text"] = self.text;
	}
	if (self.floating) {
		params[@"floating"] = self.floating;
	}
	if (self.useHTML) {
		params[@"useHTML"] = self.useHTML;
	}
	if (self.align) {
		params[@"align"] = self.align;
	}
	if (self.x) {
		params[@"x"] = self.x;
	}
	if (self.widthAdjust) {
		params[@"widthAdjust"] = self.widthAdjust;
	}
	return params;
}

@end